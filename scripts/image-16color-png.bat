set /p inputFileName="Enter inputFileName (png only): "

"../bin/pngquant.exe" --force --verbose 16 -o "../output/16colors-%inputFileName%" "../input/%inputFileName%"

pause
