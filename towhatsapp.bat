@echo off

rem get the length of the video
ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 %1 > length.txt

rem store the length of the video in a variable
set /p length=<length.txt

rem calculate the bitrate to reach 15MB
set /A bitrate=(15*1024*1024)/%length%

rem convert the video using the gpu and the calculated bitrate
ffmpeg -i %1 -c:v h264_nvenc -b:v %bitrate% -y output.mp4

rem delete the length file
del length.txt