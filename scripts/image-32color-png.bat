set /p inputFileName="Enter inputFileName (png only): "

"../bin/pngquant.exe" --force --verbose 32 -o "../output/32colors-%inputFileName%" "../input/%inputFileName%"

pause
