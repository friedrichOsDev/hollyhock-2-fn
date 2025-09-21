@echo off
set hollyhock-dir=C:\Users\Friedrich\Desktop\hollyhock-2-fn
set output-dir=C:\Users\Friedrich\Desktop\Snail2021

C:
cd C:\MinGW\bin
mkdir %output-dir%
gcc -o %output-dir%\Snail2021.exe %hollyhock-dir%\patcher\Snail2021mod.c -lz -static
del %output-dir%\mod.txt

pause

copy %output-dir%\Snail2021.exe %hollyhock-dir%\patcher\Snail2021.exe

pause

