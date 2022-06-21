set /p inputFileName="Enter inputFileName: "

for %%f in ("%inputFileName%") do set inputFileNameWithoutExtension=%%~nf

"../bin/ffmpeg.exe" -i "../input/%inputFileName%" -c:a libopus -b:a 256K "../output/%inputFileNameWithoutExtension%.opus"

pause
