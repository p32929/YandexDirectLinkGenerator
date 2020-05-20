@ECHO OFF
title Yandex Direct Link Generator

:START
echo Enter Yandex link
set/p "d="

IF "%d:~0,16%"=="https://yadi.sk/" GOTO DO
IF NOT "%d:~0,16%"=="https://yadi.sk/" GOTO DONOT

:DO
echo ############################
echo Entered URL: %d%
echo Please wait...
echo ############################
echo.
yadisk-direct %d%
echo.
echo ############################
goto START

:DONOT
echo INVALID URL
goto START

:END