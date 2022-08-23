@echo off

rem Simple batch file to assemble Game Boy ROMs
rem usage: build.bat <sourcefile>

setlocal
set _fn=%~n1

if exist %_fn%.gb del %_fn%.gb

echo Assembling...
rgbasm -o%_fn%.o %1
echo Linking...
rgblink -n%_fn%.sym -m%_fn%.map %_fn%.o -o %_fn%.gb
echo Fixing...
rgbfix -p 255 -v %_fn%.gb

echo Generated: %_fn%.gb
del *.o

endlocal


