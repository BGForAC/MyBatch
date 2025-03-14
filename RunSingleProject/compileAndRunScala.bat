@echo off
setlocal enabledelayedexpansion

pushd scalaProject
for /f "delims=" %%i in ('dir /b') do ( 
    set file=%%i
    if "!file:~-6!"==".scala" (
        scalac !file!
    )
    call runScala.bat
) 
popd
endlocal
pause