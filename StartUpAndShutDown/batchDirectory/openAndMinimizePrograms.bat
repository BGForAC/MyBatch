rem 打开并尝试最小化openAndMinimize文件夹下的所有程序
pushd openAndMinimize
for /f "delims=" %%i in ('dir /b') do (
    start /min "" "%%i"
)
popd