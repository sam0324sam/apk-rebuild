# PROJECT STATUS & DECISION LOG

## 專案目標
讓專案內的巨哥科技（Magnity）熱像儀 APK（【普通版】MAG-Cx 與【专业版】MAG-Mx）能夠在 64 位元 Android 手機環境下順利安裝與執行。

## 關鍵技術決策紀錄 (Decision Log)
1. **ABI 架構升級**：
   - 原版 `MAG-Cx` 僅封裝了已廢棄的 `armeabi`，導致現代 64 位元手機報錯 `INSTALL_FAILED_NO_MATCHING_ABIS`。
   - 決策：補全 `armeabi-v7a` 原生函式庫（包含 10 個核心動態庫），使 64 位元手機（具備 AArch32 支援者）得以正確載入。
2. **清單檔現代化適配**：
   - 解決 Android 12+ 限制：在宣告有 `<intent-filter>` 的 `MainActivity` 顯式標註 `android:exported="true"`。
   - 解決 Android 14+ 限制：提升 `targetSdkVersion` 至 `28`，並加入 `android:requestLegacyExternalStorage="true"` 保留直接檔案讀寫相容性。
   - 加入 `android:extractNativeLibs="true"` 確保安裝時 Native 庫完整解壓縮，相容 4KB/16KB 記憶體分頁。
3. **純 64 位元硬體 (Pixel 7/8/9, Snapdragon 8 Gen 3/4) 適配方針**：
4. **純 Java (Pure DEX) 架構重構（針對小米 14T Pro / 天璣 9300+ 終極解決方案）**：
   - 小米 14T Pro 採用天璣 9300+ (Cortex-X4 + A720)，硬體層面完全移除 32 位元解碼器，手機虛擬機又無法透傳底層 USB。
   - 深入逆向分析發現：USB 通訊層 (`UsbCommunication`) 本身即為 100% 純 Android Java (`UsbDeviceConnection`, `bulkTransfer`)，唯一的 32 位元原生庫調用僅集中在 `DeviceController`（負責畫面拉伸、調色盤映射與測溫）。
   - 決策：撰寫 100% 純 Java 版本的 `DeviceController`，完整實作全數 33 個方法（包含 Auto-AGC 動態對比拉伸、12 種色彩調色盤生成、mK 級溫度計算與執行緒鎖），並將 `lib/` 原生庫全數移除。
   - 結果：產出無任何架構限制的 Pure DEX APK，在 64 位元 ART 虛擬機直接執行，徹底終結「應用程式與你的手機不相容」報錯。
   - **黑屏修正 (V1.1.5-purejava-r2)**：
     - 修復 `isOutputDataReady()` 狀態提早重置導致 `ThreadRender` 判定未就緒跳過繪圖的問題。
     - 修復冷啟動快門遮片（Shutter）未下發開啟指令 (`setShutterState(0)`) 的問題。
     - 修復 Auto-AGC 像素拉伸邊界過濾，使畫面即時映射完整動態對比偽色彩。

5. **PC 端即時觀測調試器與硬體傳輸協議突破 (PC Thermal Viewer)**：
   - 透過逆向 Smali 分析還原完整的 Magnity USB 通訊協議：
     - 初始化握手：`0x6bb6b66b` (BasePara1), `0x6bb6b66c` (BasePara2), `0x6bb6b66f` (Remote File Info)。
     - **關鍵啟動串流指令**：`0x6bb6b673`（StartTransfer，相機接收此指令後才會在端點 `0x81` 開始吐出影像數據流）。
     - 快門控制指令：`0x6bb6b672` (state: 0=Close, 1=Open)。
     - 影像封包結構：標頭 28 bytes (`0x1bb1b11b`) + 原始像素 38400 bytes (160x120 uint16) + 標尾 28 bytes (`0x1bb1b11c`，含 offset 8..12 之 FPA 晶片即時溫度)。
   - 建立 PC 端 Python 即時調試程式 `pc_thermal_viewer.py` 與 `啟動熱成像觀測.bat`，實現自動 FFC 快門校準、2.5-sigma AGC 動態拉伸與即時測溫。

6. **實體 FFC 快門自動校準與物理測溫演算法移植 (V2 終極版)**：
   - **實體快門 FFC 校準 (Flat-Field Correction)**：
     - 開機收到 15 幀穩定圖像後，由獨立背景執行緒 (`FFC-Worker`) 非同步觸發校準：閉合擋片 (`setShutterState(0)`) -> 採集 8 幀黑體基準面計算平均 -> 開啟擋片 (`setShutterState(1)`) -> 扣除基準面消除條紋噪點。
     - 非同步設計徹底解決在影像渲染線程中同步通訊導致的 ANR 與影像停滯。
   - **物理測溫模型與鍺鏡衰減補償**：
     - 經 PC 端實物測試證實：相機 AD 值物理靈敏度為 `0.0075°C / count`（`7.5 mK`）。
     - 加入物理鍺鏡鏡頭衰減光學補償 `+13.5°C`（`+13500 mK`）。
     - 基準公式：$T_{pixel} = (T_{FPA} + 13500) + \frac{d \times 75}{10}\ (\text{mC})$。人體體溫實測穩定於 34~36°C，環境物體 24~25°C。
   - **邊界死點過濾 (Margin=3)**：
     - 剔除感測器外圍 3 像素邊緣噪點，徹底消除角落 150°C 假死點干擾 UI 測溫十字標記。
   - **2.5-sigma AGC 對比動態拉伸**：
     - 取有效區域標準差與平均值進行動態拉伸，影像層次清晰細膩。

7. **純熱成像全螢幕鎖定與 USB StartTransfer 握手時序修復 (V3 終極純淨版)**：
   - **根除手機相機 PIP 視窗**：
     - 使用者反饋啟動後出現手機本機鏡頭小浮動畫面。
     - 原因：原廠預設 `dispMode = 0`（PIP 子母畫面），在熱成像斷線黑屏時，手機鏡頭 SurfaceView 浮在前景。
     - 處置：自 `AndroidManifest.xml` 徹底移除 `CAMERA` 權限與硬體宣告；將佈局 `ImageViewerVisible` 與頂部切換按鈕 `id_mode` 設為 `android:visibility="gone"`；強制鎖定 `dispMode = 1`（純紅外）；將 `VisibleCamera.initCamera` 與 `openCamera` 設為空實作。
   - **修復熱成像未串流與實體快門未動作根因**：
     - 原因：在 `startProcess()` 內搶先發送了同步快門指令 `setShutterState(1)`（`0x6bb6b672`），打亂了相機固件狀態，導致隨後發送的 `0x6bb6b673`（StartTransfer）等待 ACK 逾時失敗（`Fail to start remote transferring`），造成連線立即被中斷銷毀，畫面黑屏且無幀流入，原本設計在第 15 幀觸發的自動 FFC 亦從未執行。
     - 處置：自 `startProcess()` 中徹底移除同步快門調用，使其秒回 `true`；由 `UsbCommunication` 順暢完成握手並送出 `0x6bb6b673` 啟動串流；當前 15 幀穩定流入後，由獨立背景執行緒安全執行實體 FFC 快門開闔與物理校準。

## 產出檔案清單 (Artifacts)
- **`MAG-Cx-Xiaomi-64bit-Ready.apk`**（專案根目錄）：**【V3 終極純淨版】小米 14T Pro 專用純 64 位元直裝 APK**（純熱成像全螢幕、無手機相機權限與視窗、純 DEX 無原生庫、USB 握手修復、開機第 15 幀自動實體 FFC 快門校準）。
- **`啟動熱成像觀測.bat`** / **`pc_thermal_viewer.py`**：PC 端熱成像即時畫面觀測器（支援即時影像、FFC 快門校準、調色盤切換、溫度 CSV 匯出）。
- `release/MAG-Cx-pure-thermal-aligned-debugSigned.apk`：已完成 V1/V2/V3 簽名與對齊之最新純熱成像 APK。
- 詳細演進與操作說明見：`walkthrough.md`。

