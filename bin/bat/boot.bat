@echo off
title 守望网站帮助工具
echo.
echo Select a task:
echo =============
echo.
echo 1) 构建新版本
echo.
echo 2) 安装发布新版本
echo.
echo 2) 回退备份版本
echo.
echo 2) 手动推送
echo.
echo 5) 退出
echo.
:head
set /p val=select value:
if "%val%"=="1" start build.bat & goto :head
if "%val%"=="2" start install.bat & goto :head
if "%val%"=="3" start recovery_backup.bat & goto :head
if "%val%"=="4" start deploy.bat & goto :head
if "%val%"=="5" exit