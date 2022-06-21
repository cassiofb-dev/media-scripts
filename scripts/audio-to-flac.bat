set /p inputFileName="Enter inputFileName: "

for %%f in ("%inputFileName%") do set inputFileNameWithoutExtension=%%~nf

"../bin/ffmpeg.exe" -i "../input/%inputFileName%" -c:a flac -sample_fmt s16 -ar 48000 "../output/%inputFileNameWithoutExtension%.flac"

pause
