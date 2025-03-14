@echo off
rem 遍历当前文件夹下的目录
for /d %%i in (*) do (
	echo %%i
)
pause