@echo off
REM DOS Games Archive DOSBox launch script
REM 
REM Game: F-15 Strike Eagle III Demo
REM Configuration: standard
REM 
config -set render aspect=true
config -set cpu cycles=max
cls
if exist F15SE3\F15.EXE goto run
echo Setting up game files, please wait...
unzip -qq f15se3.zip -d F15SE3\
:run
config -set cpu cycles=auto 12010
cd F15SE3
cls
F15.EXE
cd..
config -set cpu "cycles=auto 6075 98%% limit 23880"
cls
echo Thank you for playing F-15 Strike Eagle III Demo!
echo.
echo To play again, type F15 and press Enter
echo.
echo Your DOS Games Archive http://www.dosgamesarchive.com/
@echo on