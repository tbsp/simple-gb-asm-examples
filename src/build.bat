@echo off

rem Simple batch file to assemble Game Boy ROMs
rem usage: build.bat <sourcefile>

setlocal
set _fn=%~n1

if exist %_fn%.gb del %_fn%.gb

echo Assembling...
rgbasm -o%_fn%.o %1
if ERRORLEVEL 1 goto :error
echo Linking...
rgblink -n%_fn%.sym -m%_fn%.map -o %_fn%.gb %_fn%.o
if ERRORLEVEL 1 goto :error
echo Fixing...
rgbfix -p 255 -v %_fn%.gb
if ERRORLEVEL 1 goto :error

echo Created: %_fn%.gb
del *.o
goto :end

:error
echo Build failed.

:end
endlocal
