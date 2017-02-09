::拷贝部署文件到直接文件夹
copy /y .\dist\index.html g:\sublime\dongzm.github.io\ >> access.log
::创建static文件夹
md g:\sublime\dongzm.github.io\static >> access.log
::拷贝部署文件到直接文件夹
xcopy .\dist\static g:\sublime\dongzm.github.io\static/s >> access.log
::回到当前git目录
cd ../../dongzm.github.io >> access.log
::添加文件到git暂存区
git add ./ >> access.log
::提交暂存区到仓库区
git commit -m [message] >> access.log
::上传master分支到远程仓库
git push origin master:master >> access.log
::chrome浏览器打开网站
start "C:\Program Files\Google\Chrome\Application\chrome.exe" https://dongzm.github.io/#/Prayer/all >> access.log
echo '操作成功，按任意键退出'  &  pause >> access.log