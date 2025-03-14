@echo off
set  x=1
set y =2
set z=3
echo %x%
echo % x%
echo %y %
echo %z%
echo ----------------
set "a=1"
set b="1"
echo %a%
echo %b%
echo ----------------
set a=12&
set "b=12&"
echo %a%
echo %b%
echo "%a%"
echo "%b%"
echo ----------------
set " x=1"
echo %x%
echo % x%
pause