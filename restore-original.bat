@echo off
chcp 65001 >nul
title Khôi phục Kingdom Rush Vengeance
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0scripts\restore-auto.ps1"
if errorlevel 1 (
    echo.
    echo Khôi phục thất bại. Hãy đọc thông báo lỗi ở trên.
    pause
    exit /b 1
)
echo.
echo Đã khôi phục file ngôn ngữ gốc.
pause
