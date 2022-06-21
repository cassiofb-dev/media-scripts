set /p imageFileName="Enter imageFileName: "
set /p audioFileName="Enter audioFileName: "
set /p videoFileName="Enter videoFileName: "

"../bin/ffmpeg.exe" -loop 1 -i "../input/%imageFileName%" -i "../input/%audioFileName%" -c:a libopus -b:a 256K -c:v h264_nvenc -r 6 -shortest "../output/%videoFileName%"

pause
