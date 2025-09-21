@echo off
set cpath=%~dp0
set hollyhock-dir=%cpath%..\
set output-dir=%USERPROFILE%\Desktop\Snail2021

C:
cd C:\MinGW\bin
mkdir %output-dir%
gcc -o %output-dir%\Snail2021.exe %hollyhock-dir%\patcher\Snail2021mod.c -lz -static
copy %output-dir%\Snail2021.exe %hollyhock-dir%\patcher\Snail2021.exe
