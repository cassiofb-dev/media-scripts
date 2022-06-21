set /p inputFileName="Enter inputFileName (png only): "

"../bin/pngquant.exe" --force --verbose 8 -o "../output/8colors-%inputFileName%" "../input/%inputFileName%"

pause
