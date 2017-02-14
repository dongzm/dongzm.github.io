@echo off
title  开始构建程序
echo.
echo Select a task:
echo =============
echo.
echo 1) 开始构建
echo 2) 退出
echo.
set /p val=select value:
if "%val%"=="1" goto build
if "%val%"=="2" exit
:build
::进入warder项目慕目录
cd G:\sublime\workspace\warder
g:
::构建项目编译打包成部署文件
npm run build