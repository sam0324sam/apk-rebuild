@echo off
chcp 65001 > nul
title Magnity 熱成像相機 PC 即時觀測器
echo ======================================================
echo    正在啟動 Magnity 熱成像相機 PC 即時觀測器...
echo ======================================================
python pc_thermal_viewer.py
echo.
pause
