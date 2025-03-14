@echo off
setlocal enabledelayedexpansion

pushd scalaProject
for /f "delims=" %%i in ('dir /b') do ( 
    set file=%%i
    if "!file:~-6!"==".class" (
        set filename=!file:~0,-6!
        if "!filename:~-1!" neq "$" (
            echo !filename!
            scala !filename!
            pause
        )
    )
) 
popd
endlocal
pause