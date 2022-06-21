set /p youtubeURL="Enter youtube URL: "

"../bin/youtube-dl.exe" -F %youtubeURL%

set /p youtubeFormat="Choose your format: "

"../bin/yt-dlp.exe" -f %youtubeFormat% %youtubeURL% -o "../input/%%(title)s.%%(ext)s"

pause
