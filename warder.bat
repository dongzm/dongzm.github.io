::删除上次的备份文件
del backup\index.html > access.log
rmdir /s/q backup\static >> access.log
::备份当前文件
copy /y index.html g:\sublime\dongzm.github.io\backup >> access.log
md g:\sublime\dongzm.github.io\backup\static >> access.log
xcopy .\dist\static g:\sublime\dongzm.github.io\backup\static/s >> access.log
::删除index.html文件和static文件夹
del index.html  >> access.log
rmdir /s/q static  >> access.log
::进入warder项目慕目录
cd ../workspace/warder >> access.log
::构建项目编译打包成部署文件
npm run build >> access.log

