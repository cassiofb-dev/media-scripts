set /p inputFileName="Enter inputFileName: "

for %%f in ("%inputFileName%") do set inputFileNameWithoutExtension=%%~nf

"../bin/ffmpeg.exe" -i "../input/%inputFileName%" -filter_complex "showwavespic=s=4096x4096" -frames:v 1 "../output/%inputFileNameWithoutExtension%.png"

pause
