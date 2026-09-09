import sys
import time
import struct
import threading
import numpy as np
import cv2

try:
    import usb.core
    import usb.util
    import libusb_package
except ImportError:
    print("[Error] pyusb or libusb-package is missing. Run: pip install pyusb libusb-package")
    sys.exit(1)

VID = 0x833C
PID = 0x0001
EP_IMG_IN = 0x81
EP_CMD_IN = 0x82
EP_CMD_OUT = 0x03
WIDTH = 160
HEIGHT = 120
TOTAL_PIXELS = WIDTH * HEIGHT
FRAME_RAW_BYTES = TOTAL_PIXELS * 2

MAGIC_HEADER = 0x1bb1b11b
MAGIC_TAIL = 0x1bb1b11c

class ThermalCamera:
    def __init__(self):
        self.dev = None
        self.running = False
        self.lock = threading.Lock()
        
        self.latest_raw = None
        self.latest_fpa_temp = 28.0
        self.baseline = None
        self.shutter_state = 1  # 0=close, 1=open
        self.is_calibrating = False
        self.fps = 0.0
        self.frame_count = 0
        
    def find_device(self):
        print(f"[*] Searching for Magnity Thermal Camera (VID: 0x{VID:04X}, PID: 0x{PID:04X})...")
        backend = libusb_package.get_libusb1_backend()
        dev = usb.core.find(idVendor=VID, idProduct=PID, backend=backend)
        if dev is None:
            dev = usb.core.find(idVendor=VID, idProduct=PID)
        return dev

    def connect(self):
        self.dev = self.find_device()
        if self.dev is None:
            print("\n" + "="*70)
            print("【警告】未找到相機或尚未安裝 WinUSB 驅動！")
            print("請依照以下步驟快速安裝驅動（僅需操作一次）：")
            print("1. 專案目錄下已為您放置 'zadig.exe'。")
            print("2. 雙擊執行 zadig.exe。")
            print("3. 點選頂部選單 'Options' -> 打勾 'List All Devices'。")
            print("4. 在下拉選單中選取 'Magnity Thermal Camera'。")
            print("5. 右側目標驅動程式選取 'WinUSB'，點擊 'Install Driver' (或 Replace Driver)。")
            print("6. 完成後再次執行本腳本即可！")
            print("="*70 + "\n")
            return False
            
        print("[+] Device found! Initializing USB interface...")
        try:
            self.dev.set_configuration()
        except Exception as e:
            print(f"[!] Warning on set_configuration: {e}")
            
        try:
            usb.util.claim_interface(self.dev, 0)
            print("[+] Claimed interface 0 successfully.")
        except Exception as e:
            print(f"[!] Warning claiming interface 0: {e}")

        # Send Magnity startup commands
        print("[*] Sending camera handshake commands...")
        self.send_empty_cmd(0x6bb6b66b, "Get BasePara1")
        self.send_empty_cmd(0x6bb6b66c, "Get BasePara2")
        self.send_empty_cmd(0x6bb6b66f, "Get Remote File Info")
        
        # Start remote transfer! (0x6BB6B673)
        print("[*] Starting remote transfer stream...")
        self.send_empty_cmd(0x6bb6b673, "Start Transfer")
        
        # Start with shutter open
        self.set_shutter(1)
        return True

    def send_empty_cmd(self, cmd_val, name=""):
        try:
            buf = struct.pack('<I', cmd_val)
            self.dev.write(EP_CMD_OUT, buf, timeout=1000)
            try:
                ack = self.dev.read(EP_CMD_IN, 64, timeout=800)
                print(f"[+] {name} (0x{cmd_val:08X}) ACK: {len(ack)} bytes")
            except Exception:
                pass
            return True
        except Exception as e:
            print(f"[-] {name} (0x{cmd_val:08X}) failed: {e}")
            return False

    def set_shutter(self, state):
        with self.lock:
            cmd = 0x6bb6b672
            buf = struct.pack('<II', cmd, state)
            try:
                self.dev.write(EP_CMD_OUT, buf, timeout=1000)
                try:
                    ack = self.dev.read(EP_CMD_IN, 64, timeout=800)
                except Exception:
                    pass
                self.shutter_state = state
                print(f"[+] Shutter set to: {'OPEN (1)' if state == 1 else 'CLOSED (0)'}")
                return True
            except Exception as e:
                print(f"[-] Failed to set shutter {state}: {e}")
                return False

    def trigger_ffc(self):
        def ffc_worker():
            print("\n[*] >>> Starting FFC Calibration Cycle <<<")
            self.is_calibrating = True
            
            # Step 1: Close shutter blade
            print("[*] Step 1: Closing shutter blade...")
            self.set_shutter(0)
            time.sleep(0.4)
            
            # Step 2: Accumulate 8 dark baseline frames
            print("[*] Step 2: Accumulating 8 baseline dark frames...")
            baseline_acc = np.zeros(TOTAL_PIXELS, dtype=np.float64)
            count = 0
            last_frame = -1
            
            timeout_start = time.time()
            while count < 8 and (time.time() - timeout_start) < 4.0:
                with self.lock:
                    if self.frame_count != last_frame and self.latest_raw is not None:
                        last_frame = self.frame_count
                        baseline_acc += self.latest_raw.astype(np.float64)
                        count += 1
                        print(f"    Collected dark frame {count}/8")
                time.sleep(0.04)
                
            if count > 0:
                with self.lock:
                    self.baseline = (baseline_acc / count).astype(np.float32)
                print("[+] Baseline computed successfully!")
            else:
                print("[-] Failed to collect dark frames in time.")
                
            # Step 3: Open shutter blade
            print("[*] Step 3: Opening shutter blade...")
            self.set_shutter(1)
            time.sleep(0.3)
            
            self.is_calibrating = False
            print("[*] >>> FFC Calibration Finished! <<<\n")
            
        threading.Thread(target=ffc_worker, daemon=True).start()

    def start_streaming(self):
        self.running = True
        self.stream_thread = threading.Thread(target=self._stream_loop, daemon=True)
        self.stream_thread.start()

    def _stream_loop(self):
        buf = bytearray()
        target_size = 28 + FRAME_RAW_BYTES + 28
        t_fps = time.time()
        frames_fps = 0
        
        while self.running:
            try:
                chunk = self.dev.read(EP_IMG_IN, 16384, timeout=1000)
                if not chunk:
                    continue
                buf.extend(chunk)
                
                # Search for frame header 0x1bb1b11b
                while True:
                    idx = buf.find(b'\x1b\xb1\xb1\x1b')
                    if idx == -1:
                        if len(buf) > 3:
                            buf = buf[-3:]
                        break
                    
                    if idx > 0:
                        buf = buf[idx:]
                        
                    if len(buf) < target_size:
                        break
                        
                    frame_bytes = bytes(buf[:target_size])
                    buf = buf[target_size:]
                    
                    # Parse raw uint16 pixels
                    pixel_bytes = frame_bytes[28:28 + FRAME_RAW_BYTES]
                    raw_arr = np.frombuffer(pixel_bytes, dtype=np.uint16)
                    
                    # Parse tail (FPA temp is at offset 8..12)
                    tail_bytes = frame_bytes[28 + FRAME_RAW_BYTES:]
                    fpa_temp_c = 28.0
                    if len(tail_bytes) >= 12:
                        fpa_raw = struct.unpack('<I', tail_bytes[8:12])[0]
                        if 5000 < fpa_raw < 100000:
                            fpa_temp_c = fpa_raw / 1000.0
                            
                    with self.lock:
                        self.latest_raw = raw_arr
                        self.latest_fpa_temp = fpa_temp_c
                        self.frame_count += 1
                        
                    frames_fps += 1
                    now = time.time()
                    if now - t_fps >= 1.0:
                        self.fps = frames_fps / (now - t_fps)
                        frames_fps = 0
                        t_fps = now
                        
            except Exception as e:
                time.sleep(0.005)

    def stop(self):
        self.running = False
        try:
            self.send_empty_cmd(0x6bb6b674, "Stop Transfer")
        except:
            pass


def main():
    print("="*60)
    print("       Magnity 熱成像相機 PC 即時觀測與調試程式")
    print("="*60)
    
    cam = ThermalCamera()
    while not cam.connect():
        choice = input("\n尚未偵測到相機或驅動未安裝。\n完成 Zadig 安裝後，請直接按 [Enter] 重新偵測 (或輸入 q 退出): ")
        if choice.strip().lower() == 'q':
            return
        
    cam.start_streaming()
    print("[+] Video stream started! Opening display window...")
    
    palettes = [
        ("Ironbow", cv2.COLORMAP_INFERNO),
        ("Rainbow", cv2.COLORMAP_JET),
        ("Hot", cv2.COLORMAP_HOT),
        ("Grayscale", None),
        ("Turbo", cv2.COLORMAP_TURBO),
        ("Plasma", cv2.COLORMAP_PLASMA)
    ]
    pal_idx = 0
    use_nuc = True
    
    # Real physical sensitivity of Magnity 160x120 sensor: ~7.5 mK (0.0075 C) per AD count
    temp_per_count = 0.0075
    # Lens transmission correction offset relative to internal shutter blade
    lens_offset = 13.5
    
    cv2.namedWindow("Magnity Thermal Camera Preview", cv2.WINDOW_NORMAL)
    cv2.resizeWindow("Magnity Thermal Camera Preview", 800, 640)
    
    auto_ffc_done = False
    while True:
        with cam.lock:
            raw = cam.latest_raw
            fpa_t = cam.latest_fpa_temp
            fps = cam.fps
            base = cam.baseline
            shutter = cam.shutter_state
            is_cal = cam.is_calibrating
            fc = cam.frame_count
            
        # Automatically trigger FFC once on startup for crisp image
        if not auto_ffc_done and fc > 15:
            auto_ffc_done = True
            cam.trigger_ffc()
            
        if raw is None or len(raw) < TOTAL_PIXELS:
            time.sleep(0.02)
            # Show waiting screen
            wait_img = np.zeros((480, 640, 3), dtype=np.uint8)
            cv2.putText(wait_img, "Waiting for camera data stream...", (80, 240),
                        cv2.FONT_HERSHEY_SIMPLEX, 0.8, (0, 255, 255), 2)
            cv2.imshow("Magnity Thermal Camera Preview", wait_img)
            k = cv2.waitKey(20) & 0xFF
            if k == ord('q') or k == 27:
                break
            continue
            
        raw_f = raw.astype(np.float32)
        
        # NUC processing
        if use_nuc and base is not None:
            diff = raw_f - base
        else:
            diff = raw_f - np.mean(raw_f)
            
        # 2.5-sigma AGC dynamic contrast
        mean_d = np.mean(diff)
        std_d = np.std(diff)
        if std_d < 1e-3:
            std_d = 1.0
            
        low_cut = mean_d - 2.5 * std_d
        high_cut = mean_d + 2.5 * std_d
        span = max(1.0, high_cut - low_cut)
        
        norm = np.clip(((diff - low_cut) / span) * 255.0, 0, 255).astype(np.uint8)
        norm_2d = norm.reshape((HEIGHT, WIDTH))
        
        # Colorize
        pal_name, colormap = palettes[pal_idx]
        if colormap is not None:
            color_img = cv2.applyColorMap(norm_2d, colormap)
        else:
            color_img = cv2.cvtColor(norm_2d, cv2.COLOR_GRAY2BGR)
            
        # Resize to 640x480 with bicubic interpolation
        disp_img = cv2.resize(color_img, (640, 480), interpolation=cv2.INTER_CUBIC)
        
        # Temperature calculations (Physical model with lens transmission offset)
        base_t = fpa_t + lens_offset
        pixel_temps = base_t + (diff * temp_per_count)
        pixel_temps_2d = pixel_temps.reshape((HEIGHT, WIDTH))
        diff_2d = diff.reshape((HEIGHT, WIDTH))
        
        center_t = pixel_temps_2d[HEIGHT // 2, WIDTH // 2]
        
        # Exclude 3-pixel border margin to eliminate sensor edge dead/hot pixels
        margin = 3
        inner_diff = diff_2d[margin:-margin, margin:-margin]
        inner_min_y, inner_min_x = np.unravel_index(np.argmin(inner_diff), inner_diff.shape)
        inner_max_y, inner_max_x = np.unravel_index(np.argmax(inner_diff), inner_diff.shape)
        
        min_y, min_x = inner_min_y + margin, inner_min_x + margin
        max_y, max_x = inner_max_y + margin, inner_max_x + margin
        
        min_t = pixel_temps_2d[min_y, min_x]
        max_t = pixel_temps_2d[max_y, max_x]
        
        # Scale coords to 640x480
        scale_x = 640.0 / WIDTH
        scale_y = 480.0 / HEIGHT
        
        cx_disp = 320
        cy_disp = 240
        min_x_disp = int(min_x * scale_x)
        min_y_disp = int(min_y * scale_y)
        max_x_disp = int(max_x * scale_x)
        max_y_disp = int(max_y * scale_y)
        
        # Draw Center Crosshair
        cv2.drawMarker(disp_img, (cx_disp, cy_disp), (255, 255, 255), cv2.MARKER_CROSS, 20, 2)
        cv2.putText(disp_img, f"{center_t:.1f}C", (cx_disp + 10, cy_disp + 5),
                    cv2.FONT_HERSHEY_SIMPLEX, 0.7, (255, 255, 255), 2)
                    
        # Draw Max point (Red)
        cv2.drawMarker(disp_img, (max_x_disp, max_y_disp), (0, 0, 255), cv2.MARKER_TILTED_CROSS, 16, 2)
        cv2.putText(disp_img, f"Max {max_t:.1f}C", (max(10, max_x_disp - 30), max(20, max_y_disp - 10)),
                    cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 255), 1)
                    
        # Draw Min point (Blue)
        cv2.drawMarker(disp_img, (min_x_disp, min_y_disp), (255, 0, 0), cv2.MARKER_TILTED_CROSS, 16, 2)
        
        # Top HUD bar
        hud_bg = np.zeros((70, 640, 3), dtype=np.uint8)
        hud_txt1 = f"Center: {center_t:.1f}C  |  Max: {max_t:.1f}C  |  Min: {min_t:.1f}C  |  FPA: {fpa_t:.1f}C"
        shutter_str = "OPEN" if shutter == 1 else "CLOSED"
        nuc_str = "ON" if (use_nuc and base is not None) else "OFF"
        if is_cal:
            nuc_str += " (CALIBRATING...)"
        hud_txt2 = f"FPS: {fps:.1f} | Shutter: {shutter_str} | NUC: {nuc_str} | Pal: {pal_name} | Trim: {lens_offset:+.1f}C"
        
        cv2.putText(hud_bg, hud_txt1, (10, 25), cv2.FONT_HERSHEY_SIMPLEX, 0.55, (0, 255, 0), 1)
        cv2.putText(hud_bg, hud_txt2, (10, 55), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 200, 255), 1)
        
        # Bottom Help bar
        help_bg = np.zeros((35, 640, 3), dtype=np.uint8)
        help_txt = "[SPACE] FFC | [H] Calib Hand(34.5C) | [C] Calib Room(25C) | [+/-] Trim | [P] Pal | [S] Snap | [Q] Quit"
        cv2.putText(help_bg, help_txt, (8, 23), cv2.FONT_HERSHEY_SIMPLEX, 0.42, (200, 200, 200), 1)
                    
        final_view = np.vstack([hud_bg, disp_img, help_bg])
        cv2.imshow("Magnity Thermal Camera Preview", final_view)
        
        key = cv2.waitKey(20) & 0xFF
        if key == ord('q') or key == 27:
            break
        elif key == ord(' '):
            cam.trigger_ffc()
        elif key == ord('0'):
            cam.set_shutter(0)
        elif key == ord('1'):
            cam.set_shutter(1)
        elif key == ord('h') or key == ord('H'):
            # Calibrate max point to 34.5C
            inner_max_diff = inner_diff[inner_max_y, inner_max_x]
            lens_offset = 34.5 - fpa_t - (inner_max_diff * temp_per_count)
            print(f"[*] Hand Calibrated! Lens offset set to: {lens_offset:+.2f}C")
        elif key == ord('c') or key == ord('C'):
            # Calibrate center point to 25.0C
            center_diff = diff_2d[HEIGHT // 2, WIDTH // 2]
            lens_offset = 25.0 - fpa_t - (center_diff * temp_per_count)
            print(f"[*] Room Calibrated! Lens offset set to: {lens_offset:+.2f}C")
        elif key == ord('+') or key == ord('='):
            lens_offset += 0.5
            print(f"[*] Trim offset: {lens_offset:+.2f}C")
        elif key == ord('-') or key == ord('_'):
            lens_offset -= 0.5
            print(f"[*] Trim offset: {lens_offset:+.2f}C")
        elif key == ord('p') or key == ord('P'):
            pal_idx = (pal_idx + 1) % len(palettes)
            print(f"[*] Switched palette to: {palettes[pal_idx][0]}")
        elif key == ord('r') or key == ord('R'):
            use_nuc = not use_nuc
            print(f"[*] NUC correction: {'ENABLED' if use_nuc else 'DISABLED'}")
        elif key == ord('s') or key == ord('S'):
            ts = int(time.time())
            png_name = f"snapshot_{ts}.png"
            csv_name = f"raw_temp_{ts}.csv"
            cv2.imwrite(png_name, final_view)
            np.savetxt(csv_name, pixel_temps_2d, fmt="%.2f", delimiter=",")
            print(f"[+] Saved snapshot to {png_name} and temperatures to {csv_name}!")
            
    cam.stop()
    cv2.destroyAllWindows()
    print("[+] Preview terminated.")

if __name__ == "__main__":
    main()
