# Magnity 熱成像儀 (MAG-Cx) 64 位元 Android 重構與手動校準專案

本專案致力於將巨哥科技（Magnity）熱像儀（USB VID: `0x833C`, PID: `0x0001`）的原廠 Android 應用程式重構為純 64 位元環境相容架構，徹底解決現代 64-bit-only 手機（如小米 14T Pro / 天璣 9300+ / Snapdragon 8 Gen 3/4 等無 32 位元架構之裝置）安裝崩潰、快門卡死、熱漂移與測溫失真等問題。

---

## 🚀 專案亮點與核心成果

1. **純 64 位元 ART 相容架構（Pure Java / Pure DEX）**
   - 原廠 APK 依賴 32 位元原生動態庫（`armeabi`），在現代 64-bit-only 硬體上會報錯 `INSTALL_FAILED_NO_MATCHING_ABIS` 或直接閃退。
   - 經深度逆向分析重寫核心控制器 `DeviceController` 為 100% 純 Java 實作，完整實作色彩拉伸（AGC）、調色盤映射、壞點濾波與執行緒鎖，徹底擺脫對 32 位元原生庫的依賴。

2. **手動溫度校準與極速微調機制（Calibration System）**
   - **手機音量鍵微調**：觀測熱成像時，直接按手機側邊實體鍵：
     - **音量【+】**：即時微調 **+0.5°C**。
     - **音量【-】**：即時微調 **-0.5°C**。
     - 每次調整即時跳出螢幕 Toast 提示，看著額溫槍 2 秒精準對齊！
   - **長按螢幕一鍵校準**：在熱像儀畫面上長按 1 秒，彈出校準選單：
     - 【一鍵校準為 36.4°C (標準額溫)】
     - 【一鍵校準為 36.8°C (偏高體溫)】
     - 【重置補償為 0.0°C】
   - **永久記憶儲存**：校準補償量自動寫入手機內部 `SharedPreferences`，每次開機自動生效。

3. **直向模式坐標轉置對齊（Rotation Alignment）**
   - 修復原廠直向預覽（Orientation 90°）時 Canvas 矩陣旋轉產生的對角拉扯問題。
   - 實作雙向坐標映射算法 `buffer2ClientXY()`，最高溫紅十字與最低溫藍十字精確吸附在人臉與發熱體熱點上。

4. **純熱成像全螢幕鎖定**
   - 徹底移除不必要的手機相機權限與子母畫面（PIP）小浮動視窗，啟動即進入乾淨全螢幕熱成像。

5. **實體 FFC 快門自動與手動校準**
   - 開機自動於背景執行緒觸發機械快門校準（喀噠、喀噠），重新採集暗電流零點基準。
   - 支援雙擊螢幕（Double Tap）隨時手動重新採集快門黑體基準面。

---

## 📦 最新版本下載 (Releases)

安裝包請至 GitHub Releases 頁面下載：
👉 **[下載 MAG-Cx 最新 Release APK](https://github.com/sam0324sam/apk-rebuild/releases/latest)**

- **`MAG-Cx-v2.2.2-Calibratable.apk`**：完整功能版（含手動校準與音量鍵微調）。
- **`MAG-Cx-Xiaomi-64bit-Ready.apk`**：小米 14T Pro 專用純 64 位元直裝包。

---

## 🛠️ 目錄結構說明

```text
apk-rebuild/
├── decompiled/
│   └── MAG-Cx/                  # 逆向與重構後之 MAG-Cx 專案源碼 (Smali/XML)
├── scratch/
│   └── build_dc/                # 純 Java 重寫之 DeviceController 原始碼
├── pc_thermal_viewer.py         # PC 端 Python 即時熱成像調試與觀測工具
├── 啟動熱成像觀測.bat             # 一鍵啟動 PC 調試器
├── PROJECT_STATUS.md            # 詳細架構決策日誌與更新里程碑
└── README.md                    # 專案說明文件
```

---

## 💻 本地編譯與打包指南

### 前置環境
- Java 8+ (JDK 17/21 亦可)
- Android SDK Build-tools (含 `d8`)
- [Apktool](https://apktool.org/)
- [uber-apk-signer](https://github.com/patrickfav/uber-apk-signer)

### 編譯步驟

1. **編譯純 Java 核心並轉換為 Smali**：
   ```powershell
   javac --release 8 (Get-ChildItem -Path "scratch\build_dc" -Recurse -Filter "*.java" | ForEach-Object { $_.FullName })
   & d8 --min-api 21 --output scratch\dex_out (Get-ChildItem -Path "scratch\build_dc\cn\com\magnity\magnitycx\sdk" -Filter "DeviceController*.class" | ForEach-Object { $_.FullName })
   # 將生成的 classes.dex 反編譯為 smali 後覆蓋至 decompiled/MAG-Cx/
   ```

2. **重新打包與簽名**：
   ```powershell
   apktool b decompiled/MAG-Cx -o build_out/MAG-Cx-unsigned.apk
   uber-apk-signer -a build_out/MAG-Cx-unsigned.apk -o build_out/
   ```

---

## 📜 授權與宣告
本專案僅供個人硬體相容性研究、無障礙使用與逆向工程調試學習之用，軟體專利與商標權均屬原廠商（巨哥科技 Magnity）所有。
