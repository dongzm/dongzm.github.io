@echo off
title 还原备份版本
echo '需要开启nginx，才能查看本地效果'  &  pause
::查看备份网站
start "C:\Program Files\Google\Chrome\Application\chrome.exe" http://localhost:10084/#/Prayer/urgent
echo.
echo Select a task:
echo =============
echo.
echo 1) 还原备份版本
echo 2) 退出
echo.
set /p val=select value:
if "%val%"=="1" goto recovery
if "%val%"=="2" exit
:recovery 
::删除index.html文件和static文件夹
del G:\sublime\dongzm.github.io\index.html
rmdir /s/q G:\sublime\dongzm.github.io\static
::拷贝部署文件到直接文件夹
copy /y G:\sublime\dongzm.github.io\backup\index.html g:\sublime\dongzm.github.io\
::创建static文件夹
md g:\sublime\dongzm.github.io\static
::拷贝部署文件到直接文件夹
xcopy G:\sublime\dongzm.github.io\backup\static g:\sublime\dongzm.github.io\static/s
start "C:\Program Files\Google\Chrome\Application\chrome.exe" http://localhost:10083/#/Prayer/urgent
echo.
echo Select a task:
echo =============
echo.
echo 1) 发布到服务器
echo 2) 还原代码
echo 3) 退出

echo.
set /p val1=select value:
if "%val1%"=="1" goto :deploy
if "%val1%"=="2" goto :goback
if "%val1%"=="3" exit
:deploy
::回到当前git目录
cd G:\sublime\dongzm.github.io
g:
::添加文件到git暂存区
git add ./
::提交暂存区到仓库区
git commit -m [message]
::上传master分支到远程仓库
git push origin master:master
::chrome浏览器打开网站
start "C:\Program Files\Google\Chrome\Application\chrome.exe" https://dongzm.github.io/#/Prayer/all
echo '部署成功，按任意键退出'  &  pause & exit
:goback
::删除index.html文件和static文件夹
del G:\sublime\dongzm.github.io\index.html
rmdir /s/q G:\sublime\dongzm.github.io\static
git checkout ./
echo '还原成功，任意键退出'  &  pause & exit