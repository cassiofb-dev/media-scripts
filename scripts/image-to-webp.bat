set /p inputFileName="Enter inputFileName: "

for %%f in ("%inputFileName%") do set inputFileNameWithoutExtension=%%~nf

"../bin/ffmpeg.exe" -i "../input/%inputFileName%" -c:v libwebp -r 10 "../output/%inputFileNameWithoutExtension%.webp"

pause
