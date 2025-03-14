@echo off
setlocal
set x=1
set y=1
setlocal
set x=2
echo x is %x%
echo y is %y%
endlocal
echo x is %x%
echo y is %y%
endlocal
pause