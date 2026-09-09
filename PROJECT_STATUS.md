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

8. **坐標轉置對齊與溫度精細對齊 (V2.2.1-Aligned)**：
   - **最高溫紅十字位置漂移修復**：直向模式下（Orientation 90°）Canvas Matrix 旋轉 90°，底層 Java 實作 `buffer2ClientXY()`（$cx = 120 - 1 - by, \; cy = bx$），使 UI 上的最高溫十字準確吸附在額頭真實熱源上。
   - **中心幾何錨定**：取感測器幾何中心 `(80, 60)` 3×3 均值採樣，排除原廠奇偶偏移。

9. **手動溫度校準與底層物理模型修正 (V2.2.2-Calibratable)**：
   - **移除虛高 +16.3°C 硬編碼**：解決快門關閉時畫面飆升至 51.4°C 的問題，使快門零點回歸真實機溫。
   - **手機音量鍵即時微調**：按音量【+】/【-】即時微調 $\pm 0.5^\circ\text{C}$ 並彈出 Toast 提示，對齊額溫槍只需 2 秒。
   - **螢幕長按一鍵體溫校準**：長按熱像儀畫面中央彈出選單，支援一鍵校準為 36.4°C / 36.8°C / 微調 / 重置。
   - **永久記憶**：校準補償值自動寫入 `SharedPreferences`，下次開機自動生效。

10. **影像翻轉引擎實作與版本號顯式校準 (V2.2.3-Flipped)**：
    - **影像水平/垂直翻轉生效**：在 `DeviceController` 中完整實作 `setExtParameter(ExtPara)` 接收 `dwFlip`，並在 `getOutputBMPData` 輸出 Bitmap 像素時依據直向 90° 矩陣執行逆向映射（水平翻轉反轉 Y，垂直翻轉反轉 X），完美同步原廠 `ImageViewer` 的十字座標翻轉機制，徹底修復「設定內翻轉無效」與「拍攝右側物體卻顯示在右側的鏡像反轉」問題。
    - **長按選單快捷翻轉**：長按螢幕校準彈窗內新增【切換水平翻轉】，無須進設定頁即可一鍵校正鏡像。
    - **版本號顯式同步**：在 `AndroidManifest.xml` 與 `apktool.yml` 顯式標記 `versionCode: 223` 與 `versionName: 2.2.3-flipped`，解決 Android 系統應用資訊與 App 關於頁面版本號未更新的問題。

## 產出檔案清單 (Artifacts)
- **`MAG-Cx-v2.2.3-Flipped.apk`**（GitHub Releases）：最新版影像翻轉修復與手動校準安裝包。
- **`MAG-Cx-Xiaomi-64bit-Ready.apk`**（GitHub Releases）：最新版鏡像副本。
- **`啟動熱成像觀測.bat`** / **`pc_thermal_viewer.py`**：PC 端熱成像即時畫面觀測器。



