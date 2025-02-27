@echo off
setlocal enabledelayedexpansion
rem 每天自动开机时自动执行该脚本
rem 进入存放程序软链接和批处理程序的文件夹, 以便打开程序，桌面的batchDirectory文件夹
pushd C:\Users\%username%\Desktop\batchDirectory

rem 初始化配置
call initConfig.bat

rem 根据配置文件执行相应的操作

if %checkTime% == 1 ( call checkTime.bat )

if NOT errorlevel 1 (
    goto continue
)

echo "判断今天不上班, 60秒后执行强制关机脚本，关闭窗口来终止批处理，如不符合预期请检查scalaScripts目录下的checkTimeOutput.txt文件"
timeout /t 60 /nobreak
call forceShutdown.bat

:continue

echo "今天上班， 尝试打开程序"
call openAllPrograms.bat

popd
endlocal