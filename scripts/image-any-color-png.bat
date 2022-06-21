set /p inputFileName="Enter inputFileName (png only): "
set /p numberOfColors="Enter numberOfColors (integer): "

"../bin/pngquant.exe" --force --verbose %numberOfColors% -o "../output/%numberOfColors%colors-%inputFileName%" "../input/%inputFileName%"

pause
