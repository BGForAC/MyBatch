@echo off
setlocal

rem 打开UnityProject的Copy
set PROJECT_PATH="E:\Project_copy"
set UNITY_PATH="D:\Program Files\UnityRel\Unity 2021.3.16f1\Editor\Unity.exe"

start "" %UNITY_PATH% -projectPath %PROJECT_PATH%

endlocal