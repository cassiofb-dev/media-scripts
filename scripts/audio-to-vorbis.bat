set /p inputFileName="Enter inputFileName: "

for %%f in ("%inputFileName%") do set inputFileNameWithoutExtension=%%~nf

"../bin/ffmpeg.exe" -i "../input/%inputFileName%" -c:a libvorbis -q:a 4 "../output/%inputFileNameWithoutExtension%.ogg"

pause
