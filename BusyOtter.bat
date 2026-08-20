echo off
:initialize
echo [ INFO ] started initializing BusyOtter
title BusyOtter
echo [ INFO ] finsished initializing BusyOtter
pause
cls
goto welcome
:welcome
echo -----------
echo ^|BusyOtter^|
echo -----------
goto cli
:cmds
set /p "cmd=BusyOtter$ "
if %cmd% == net goto net
if %cmd% == ver goto ver
if %cmd% == fetch goto fetch
if %cmd% == help goto help
if %cmd% == exit goto exit
if %cmd% == ls goto ls
if %cmd% == clear goto clear
if %cmd% == info goto info
if %cmd% == 67 goto 67
if %cmd% == color-red goto red
if %cmd% == color-blue goto blue
if %cmd% == color-green goto green
if %cmd% == color-reset goto reset
goto cli
:cli
goto cmds
goto cli
:net
ipconfig
ping google.com
goto cli
:ver
echo BusyOtter version 0.0.2 RC1
goto cli
:fetch
echo  ____                   ___  _   _
echo ^| __ ) _   _ ___ _   _ / _ \^| ^|_^| ^|_ ___ _ __
echo ^|  _ \^| ^| ^| / __^| ^| ^| ^| ^| ^| ^| __^| __/ _ \ '__^|
echo ^| ^|_) ^| ^|_^| \__ \ ^|_^| ^| ^|_^| ^| ^|_^| ^|^|  __/ ^|
echo ^|____/ \__,_^|___/\__, ^|\___/ \__^|\__\___^|_^|
echo                  ^|___/
echo BusyOtter version:
echo BusyOtter 0.0.2 RC1
echo user logged in:
echo %USERNAME%
echo windows version:
ver
echo language written in:
echo batch/cmd
goto cli
:help
echo commands:
echo net *tests network and shows network info*
echo ver *shows the version*
echo fetch *fetches system info*
echo help *the command that shows this*
echo ls *lists filesand directories in the directory busyotter is in*
echo exit *terminates the BusyOtter script*
echo clear *clears the screen*
echo info *shows information about the lisence and github repo*
echo color- *you can add red or blue or green afther color to get those colors or reset to go to white*
goto cli
:exit
exit
:ls
dir
goto cli
:clear
cls
goto cli
:info
echo BusyOtter is lisenced under BSD-3 clause license
echo github repository: https://github.com/otter-larp/BusyOtter/
echo thanks for using/testing my project BusyOtter!
goto cli
:67
echo go fuck yourself!
exit
:red
color 4
goto cli
:blue
color 1
goto cli
:green
color 2
goto cli
:reset
color 7
goto cli