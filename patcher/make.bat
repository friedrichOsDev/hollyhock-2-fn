@echo off

set current_path=%~dp0

C:
cd C:\MinGW\bin

mkdir "%USERPROFILE%\Desktop\Snail2021"

gcc -o "%USERPROFILE%\Desktop\Snail2021\Snail2021.exe" "%current_path%Snail2021mod.c" -lz -static

pause

copy "%USERPROFILE%\Desktop\Snail2021\Snail2021.exe" "%current_path%Snail2021.exe"

pause
