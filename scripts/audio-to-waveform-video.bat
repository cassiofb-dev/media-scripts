set /p inputFileName="Enter inputFileName: "

for %%f in ("%inputFileName%") do set inputFileNameWithoutExtension=%%~nf

"../bin/ffmpeg.exe" -i "../input/%inputFileName%" -filter_complex "[0:a]showwaves=s=1280x720:mode=line,format=yuv420p[v]" -map "[v]" -map 0:a -c:v h264_nvenc -c:a copy "../output/%inputFileNameWithoutExtension%.mkv"

pause
