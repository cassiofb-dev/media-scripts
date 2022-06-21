set /p audioFileName="Enter audioFileName: "
set /p videoFileName="Enter videoFileName: "

set /p outputFileName="Enter outputFileName: "

"../bin/ffmpeg.exe" -i "../input/%audioFileName%" -i "../input/%videoFileName%" -c:a copy -c:v copy -shortest "../output/%outputFileName%"

pause
