@echo off
rem 递归遍历当前文件夹下的所有文件
for /r %%i in (*) do (
	echo %%i
)
pause