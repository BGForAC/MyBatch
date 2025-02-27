@echo off
setlocal enabledelayedexpansion

pushd C:\Users\%username%\Desktop\SyncTime
call syncTimeNetVer.bat
echo "同步时间成功"
popd

:qiandao

set /p input="签到完后输入 已签到 即可关机" 
if %input% neq 已签到 ( goto qiandao )

:loop

echo "三秒后关机"
shutdown -s -t 3
timeout /t 15 /nobreak

goto loop
endlocal