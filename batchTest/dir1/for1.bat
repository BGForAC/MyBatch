@echo off
call for2.bat
rem 打印1到100
for /l %%i in (1,1,100) do (
    echo %%i
)
echo for1
pause