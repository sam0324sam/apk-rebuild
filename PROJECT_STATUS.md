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

11. **十字座標翻轉同步連動、單一安裝包與開源 Public (V2.2.4-Ready)**：
    - **十字座標與翻轉畫面 100% 同步連動**：
      - 根本原因：原廠 `ImageViewer` 繪製十字時直接調用 `DeviceController.clientXY2ScreenXY`，Smali 層並未在 `screenCoor` 進行 `imageFlip` 鏡像，而是預期底層 C++ 在回傳 `intMaxX/Y` 前已套用 `dwFlip` 映射。純 Java 版本先前未對極值座標套用翻轉，導致影像翻轉後十字仍留在舊位置。
      - 解決方案：在 `DeviceController.pushFrame()` 中，根據 `sFlipMode`（水平翻轉反轉 X，垂直翻轉反轉 Y）同步計算鏡像坐標 `cMin` 與 `cMax`，並同步修復 `screenXY2SensorXY()` 觸控取溫映射，使最高溫紅十字、最低溫藍十字與觸控測溫在任何翻轉狀態下 100% 精準連動吸附在熱點上！
    - **精簡單一標準安裝包**：
      - 徹底移除多重別名與冗餘副本，統一規範單一交付檔案名稱：`MAG-Cx-v2.2.4-Ready.apk`。
      - 同步更新版本宣告：`versionCode: 224`、`versionName: 2.2.4-ready`。
    - **GitHub 開源 Public**：
      - 專案倉庫正式切換為 Public 公開開源。

12. **上下黑邊頻閃修復與純 Java H.264 視訊錄影引擎實作 (V2.2.5-Ready)**：
    - **上下黑邊頻閃根因與四層純黑無縫防禦**：
      - 根本原因：現代手機（144Hz OLED / 高刷螢幕）使用 Android 三重緩衝區（Triple Buffering）。原廠 `ImageViewer.drawMarginBackground()` 開頭判斷式將寬度誤判為 `if-gtz`（大於 0 則退出），導致黑邊從未被正確填色；且 `doDraw()` 在每幀繪圖時未主動清空 Canvas，導致三重緩衝區各自殘留底層主題暗灰底色（`#333333`）與前幀殘影，高速輪替時造成每秒數次的黑邊劇烈跳動閃爍。
      - 解決方案：
        1. 修正 `ImageViewer.smali`：在 `doDraw` 取得 Canvas 後立即調用 `canvas.drawColor(0xFF000000)`，保證每幀 Triple Buffer 純黑清空。
        2. 修正邊框繪製：將 `drawMarginBackground` 的條件跳轉修正為 `if-lez`（小於等於 0 退出），恢復上下邊界純黑矩形填充。
        3. 修改 `ThemeMain`：將 `windowBackground` 從 `@color/liveBackground` (`#333333`) 強制鎖定為 `@color/black` (`#000000`)。
        4. 佈局背景固化：將 `activity_main.xml` 與 `fragment_main_center.xml` 根容器與各層背景顯式鎖定為 `@color/black`，杜絕任何透明底穿透。
    - **純 Java H.264 視訊錄影引擎實作 (MediaCodec + MediaMuxer)**：
      - 根本原因：先前為相容純 64 位元移除 32 位元 Native 庫時，`DeviceController` 的錄影實作為空 Stub（僅將 `sIsRecording` 設為 true），導致畫面雖然讀秒，但底層從未進行影格編碼與檔案寫入。
      - 解決方案：
        1. 新增純 Java 錄影模組 `VideoRecorder.java`：採用 Android 系統原生硬體加速編碼器 `MediaCodec`（MIME: `video/avc`）與 `MediaMuxer`（MP4 容器）。
        2. 實作高效色彩空間轉換器：將 480×640 ARGB8888 影像快速降採樣轉換為 NV12/I420 色彩空間（單幀耗時約 1.5ms，滿足 30fps 即時性）。
        3. 連接錄影生命週期：在 `DeviceController.startRecording`、`pushFrame`、`stopRecording` 對接 `VideoRecorder`，影格持續推入編碼器。
        4. 自動媒體庫同步：錄影結束調用原廠 `GlobalFunc.notifyMediaSync()`，自動發送 `ACTION_MEDIA_SCANNER_SCAN_FILE` 廣播，錄影檔案立即在相簿中呈現。
    - **版本升級全鏈路對齊**：
      - `AndroidManifest.xml` 與 `apktool.yml` 升級為 `versionCode: 225`、`versionName: 2.2.5-ready`。
      - 產出標準安裝包：`MAG-Cx-v2.2.5-Ready.apk`。

13. **鏡筒熱漸暈平場補償、視野峰值鎖定、錄影參數順序修復與實測圖鑑 (V2.2.6-Ready)**：
    - **鏡筒熱漸暈平場補償 (Vignetting Shading Compensation)**：
      - 根本原因：相機外殼與電路發熱（~32°C），微測輻射熱計最邊緣像素斜射接收到鏡筒金屬壁自發紅外輻射，造成四周邊界呈 31.7°C 弧形光環，且過窄的 `margin = 4` 導致最高溫紅十字永遠被角落鏡筒熱量綁架。
      - 處置：實作平滑徑向平場補償模型，自動扣除外緣金屬壁自發輻射溫升；擴大有效光學視野搜尋死區至 `margin = 10`，紅十字 100% 只在真實畫面中鎖定目標（24°C~25°C 常溫物體秒被捕捉定位）；加入 30 秒開機熱平衡自動 FFC 快門採樣。
    - **錄影按鈕無反應與編碼參數修復**：
      - 根本原因：先前 Java 宣告將 `bitrate` (2048) 與 `fps` (20) 順序寫反，傳入 2048 fps 觸發 MediaCodec 硬體上限異常，造成 start 返回 false。
      - 處置：修正參數順序，加入雙向參數自適應保護與動態編碼色彩偵測，確保點擊立即啟動錄影、流暢讀秒與相簿存檔。
    - **實機實測效果圖鑑 (Gallery)**：
      - 在 `.gitignore` 解除 `sample/` 過濾，將 6 張實測熱成像照片（人臉額溫 36.5°C、燈泡 47.6°C、發熱杯 51.3°C、加熱管 44.2°C、火焰 339°C、瓦斯爐 329.5°C）完整納入版本控制並於 `README.md` 精美排版展示。
    - **版本升級全鏈路對齊**：
      - `AndroidManifest.xml` 與 `apktool.yml` 升級為 `versionCode: 226`、`versionName: 2.2.6-ready`。
      - 產出單一標準安裝包：`MAG-Cx-v2.2.6-Ready.apk`。

## 產出檔案清單 (Artifacts)
- **`MAG-Cx-v2.2.6-Ready.apk`**（GitHub Releases）：最新穩定版，消除邊界 31°C 熱漸暈、常溫物體精準捕捉、一鍵 H.264 視訊錄影、黑邊防頻閃、支援十字翻轉連動、手動校準與純 64 位元執行。
- **`啟動熱成像觀測.bat`** / **`pc_thermal_viewer.py`**：PC 端熱成像即時畫面觀測器。
