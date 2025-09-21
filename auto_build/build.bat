@echo off
set cpath=%~dp0
set hollyhock-dir=%cpath%..\
set output-dir=%USERPROFILE%\Desktop\Snail2021
echo "Building Snail2021.exe..."
cd ../patcher
./make.bat
cd ../auto_build
copy %hollyhock-dir%\auto_build\run.bin %output-dir%\run.bin
copy %hollyhock-dir%\auto_build\python.bin %output-dir%\python.bin
echo "Build complete."