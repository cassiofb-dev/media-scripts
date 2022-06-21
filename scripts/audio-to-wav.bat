set /p inputFileName="Enter inputFileName: "

for %%f in ("%inputFileName%") do set inputFileNameWithoutExtension=%%~nf

"../bin/ffmpeg.exe" -i "../input/%inputFileName%" -acodec pcm_s16le -ar 48000 "../output/%inputFileNameWithoutExtension%.wav"

pause
