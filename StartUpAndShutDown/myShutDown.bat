@echo off
setlocal enabledelayedexpansion

pushd C:\Users\%username%\Desktop\SyncTime
call syncTimeNetVer.bat
echo "ͬ��ʱ��ɹ�"
popd

:qiandao

set /p input="ǩ��������� ��ǩ�� ���ɹػ�" 
if %input% neq ��ǩ�� ( goto qiandao )

:loop

echo "�����ػ�"
shutdown -s -t 3
timeout /t 15 /nobreak

goto loop
endlocal