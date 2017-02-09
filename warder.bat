::删除上次的备份文件
del backup\index.html
rmdir /s/q backup\static
::备份当前文件
copy /y index.html g:\sublime\dongzm.github.io\backup
md g:\sublime\dongzm.github.io\backup\static
xcopy static g:\sublime\dongzm.github.io\backup\static/s
::删除index.html文件和static文件夹
del index.html
rmdir /s/q static
::进入warder项目慕目录
cd ../workspace/warder
::构建项目编译打包成部署文件
npm run build
pause