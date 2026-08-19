echo off
:initialize
echo [ INFO ] started initializing BusyOtter
title BusyOtter
echo [ INFO ] finsished initializing BusyOtter
pause
cls
goto welcome
:welcome
echo ---------
echo BusyOtter
echo ---------
goto cli
:cmds
set /p cmd=
if %cmd% == net goto net
if %cmd% == ver goto ver
if %cmd% == fetch goto fetch
if %cmd% == help goto help
if %cmd% == exit goto exit
if %cmd% == ls goto ls
goto cli
:cli
echo BusyOtter$
goto cmds
goto cli
:net
ipconfig
ping google.com
goto cli
:ver
echo BusyOtter version 0.0.1 RC1
goto cli
:fetch
echo BusyOtter version:
echo BusyOtter 0.0.1 RC1
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
goto cli
:exit
exit
:ls
dir
goto cli