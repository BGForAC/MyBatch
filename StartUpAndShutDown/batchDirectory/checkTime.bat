pushd scalaScripts

if NOT exist CheckTime.class (call compile.bat)
for /f "delims=" %%i in ('scala CheckTime %jiaban% %jiejiari%') do (set ret=%%i)
rem 返回两位，第一位返回1表示今天不上班，第二位返回0表示不需要签到锁屏
if %ret:~0,1% == 1 (exit /b 1)
if %ret:~1,1% == 0 (
    echo 时间已经过了十点半，不再提示签到，执行set signInLock=0
    set signInLock=0
)

popd