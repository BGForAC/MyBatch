@echo off
setlocal enabledelayedexpansion
rem ÿ���Զ�����ʱ�Զ�ִ�иýű�
rem �����ų��������Ӻ������������ļ���, �Ա�򿪳��������batchDirectory�ļ���
pushd C:\Users\%username%\Desktop\batchDirectory

rem ��ʼ������
call initConfig.bat

rem ���������ļ�ִ����Ӧ�Ĳ���

if %checkTime% == 1 ( call checkTime.bat )

if NOT errorlevel 1 (
    goto continue
)

echo "�жϽ��첻�ϰ�, 60���ִ��ǿ�ƹػ��ű����رմ�������ֹ�������粻����Ԥ������scalaScriptsĿ¼�µ�checkTimeOutput.txt�ļ�"
timeout /t 60 /nobreak
call forceShutdown.bat

:continue

echo "�����ϰ࣬ ���Դ򿪳���"
call openAllPrograms.bat

popd
endlocal