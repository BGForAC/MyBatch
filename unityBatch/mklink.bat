@echo off
setlocal enabledelayedexpansion

rem Set the directory you want to list
set from=E:\Project
set to=E:\Project_copy

if not exist %to% (md %to%)

rem Change to the specified directory
pushd "%from%"

rem Iterate over all files and directories in the specified directory non-recursively
for %%i in (*) do (
    mklink/J %to%\%%i %from%\%%i
)

rem Iterate over all directories in the specified directory non-recursively
for /d %%i in (*) do (
    mklink/J %to%\%%i %from%\%%i
)

rem Return to the original directory
popd

pause

endlocal