setlocal enabledelayedexpansion
for /f "delims=" %%i in ('dir /b') do ( 
    set file=%%i
    if "!file:~-6!"==".scala" (
        scalac !file!
    )
) 
endlocal