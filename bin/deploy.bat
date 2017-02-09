@echo off
title  推送修改到服务器
echo.
echo Select a task:
echo =============
echo.
echo 1) 开始推送
echo 2) 退出
echo.
set /p val=select value:
if "%val%"=="1" goto push
if "%val%"=="2" exit
:push
::进入git目录
cd G:\sublime\dongzm.github.io
g:
::上传master分支到远程仓库
git push origin master:master
::chrome浏览器打开网站
start "C:\Program Files\Google\Chrome\Application\chrome.exe" https://dongzm.github.io/#/Prayer/all
echo '部署成功，按任意键退出'  &  pause