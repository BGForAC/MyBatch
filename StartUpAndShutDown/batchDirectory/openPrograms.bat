rem 打开oepn文件夹下的所有程序
pushd open
for /f "delims=" %%i in ('dir /b') do (
    start "" "%%i"
)
popd