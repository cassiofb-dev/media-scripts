set /p inputFileName="Enter inputFileName (png only): "

"../bin/pngquant.exe" --force --verbose 4 -o "../output/4colors-%inputFileName%" "../input/%inputFileName%"

pause
