pushd scalaScripts

if NOT exist CheckTime.class (call compile.bat)
for /f "delims=" %%i in ('scala CheckTime %jiaban% %jiejiari%') do (set ret=%%i)
rem ������λ����һλ����1��ʾ���첻�ϰ࣬�ڶ�λ����0��ʾ����Ҫǩ������
if %ret:~0,1% == 1 (exit /b 1)
if %ret:~1,1% == 0 (
    echo ʱ���Ѿ�����ʮ��룬������ʾǩ����ִ��set signInLock=0
    set signInLock=0
)

popd