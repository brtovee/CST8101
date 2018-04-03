@echo off
Title Lab 11
REM Written by Bruce Tovee

:menu
cls
echo Option 1) Test network adaptor
echo Option 2) Run ipconfig
echo Option 3) Release ip
echo Option 4) Renew ip
echo Option 5) Flush dns cache
echo Option 6) Stop print spooler
echo Option 7) Start print spooler
echo Option 8)  shows current user
echo enter q to exit

set /p input="Enther the number of the option you want to use: "

if "%input%"=="1" goto one
if "%input%"=="2" goto two
if "%input%"=="3" goto three
if "%input%"=="4" goto four
if "%input%"=="5" goto five
if "%input%"=="6" goto six
if "%input%"=="7" goto seven
if "%input%"=="8" goto eight
if "%input%"=="q" exit

:one
ping 127.0.0.1
pause
goto menu

:two
ipconfig
pause
goto menu

:three
ipconfig /release
pause
goto menu

:four
ipconfig /renew
pause
goto menu

:five
ipconfig /flushdns
pause
goto menu

:six
net stop spooler
pause
goto menu

:seven
net start spooler
pause
goto menu

:eight
whoami /user
pause
goto menu