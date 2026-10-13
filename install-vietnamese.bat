@echo off
chcp 65001 >nul
title Cài đặt Việt hóa Kingdom Rush Vengeance
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0scripts\install-auto.ps1"
if errorlevel 1 (
    echo.
    echo Cài đặt thất bại. Hãy đọc thông báo lỗi ở trên.
    pause
    exit /b 1
)
echo.
echo Cài đặt hoàn tất. Hãy mở game và chọn ngôn ngữ Español.
pause
