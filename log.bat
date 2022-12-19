
@echo off
echo Enter your message:
set /p usermessage=

set localtime=%time: =0%
set logtime=%DATE:/=-%_%localtime:~0,2%-%localtime:~3,2%-%localtime:~6,2%

echo %logtime% %usermessage% >> C:\Users\jmcaf\log.txt

exit