@echo Off&COLOR 0B&setlocal enabledelayedexpansion
title 查硬碟型號 天晴 Ver230305
::====================================================================================

rd /s /q "%ProgramFiles%\CrystalDiskInfo\Smart"
taskkill /f /fi "IMAGENAME eq DiskInfo64.exe"
timeout /t 10 /nobreak
start /d "%ProgramFiles%\CrystalDiskInfo" DiskInfo64.exe
call :Code1
taskkill /f /fi "IMAGENAME eq DiskInfo64.exe"
timeout /t 10 /nobreak
start /d "%ProgramFiles%\CrystalDiskInfo" DiskInfo64.exe
goto END

::====================================================================================
:Code1

timeout /t 15 /nobreak
for /f "delims=" %%F in ('dir /ad /b "%ProgramFiles%\CrystalDiskInfo\Smart"') do (
    set HardDisk=%%F
    echo !HardDisk!>>C:\Users\!Username!\Desktop\硬碟型號
)
goto :eof

::====================================================================================
:END
exit

::====================================================================================