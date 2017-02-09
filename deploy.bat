::删除上次的备份文件
del G:\sublime\dongzm.github.io\backup\index.html
rmdir /s/q G:\sublime\dongzm.github.io\backup\static
::备份当前文件
copy /y G:\sublime\dongzm.github.io\index.html g:\sublime\dongzm.github.io\backup
md g:\sublime\dongzm.github.io\backup\static
xcopy G:\sublime\dongzm.github.io\static g:\sublime\dongzm.github.io\backup\static/s
::删除index.html文件和static文件夹
del G:\sublime\dongzm.github.io\index.html
rmdir /s/q G:\sublime\dongzm.github.io\static
::拷贝部署文件到直接文件夹
copy /y G:\sublime\workspace\warder\dist\index.html g:\sublime\dongzm.github.io\
::创建static文件夹
md g:\sublime\dongzm.github.io\static
::拷贝部署文件到直接文件夹
xcopy G:\sublime\workspace\warder\dist\static g:\sublime\dongzm.github.io\static/s
::回到当前git目录
cd G:\sublime\dongzm.github.io
::添加文件到git暂存区
git add ./
::提交暂存区到仓库区
git commit -m [message]
::上传master分支到远程仓库
::git push origin master:master
::chrome浏览器打开网站
start "C:\Program Files\Google\Chrome\Application\chrome.exe" https://dongzm.github.io/#/Prayer/all
echo '操作成功，按任意键退出'  &  pause