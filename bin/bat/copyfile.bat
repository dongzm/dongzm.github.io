@echo off
title  复制文件
echo.
echo Select a task:
echo =============
echo.
echo 1) 开始复制
echo 2) 退出
echo.
set /p val=select value:
if "%val%"=="1" goto run
if "%val%"=="2" exit
:run
copy /y output\contents.js G:\sublime\workspace\warder\src\db
echo "复制成功，任意键退出" & pause & exit