@echo Off&COLOR 0B&setlocal enabledelayedexpansion
set ProgramName=CheckHardDiskModel By Zack Ver240315
title !ProgramName!
::====================================================================================

rd /s /q "!ProgramFiles!\CrystalDiskInfo\Smart"
taskkill /f /fi "IMAGENAME eq DiskInfo64.exe"
timeout /t 10 /nobreak
start /d "!ProgramFiles!\CrystalDiskInfo" DiskInfo64.exe
call :Code1
goto END

::====================================================================================
:Code1

timeout /t 15 /nobreak
for /f "delims=" %%F in ('dir /ad /b "!ProgramFiles!\CrystalDiskInfo\Smart"') do (
    set HardDisk=%%F
    echo !HardDisk!>>%~dp0\µwºÐ«¬¸¹.txt
)
goto :eof

::====================================================================================
:END
exit

::====================================================================================