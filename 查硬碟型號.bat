@echo Off&COLOR 0B&setlocal enabledelayedexpansion
title �d�w�Ы��� �Ѵ� Ver231102
::====================================================================================

rd /s /q "%ProgramFiles%\CrystalDiskInfo\Smart"
taskkill /f /fi "IMAGENAME eq DiskInfo64.exe"
timeout /t 10 /nobreak
start /d "%ProgramFiles%\CrystalDiskInfo" DiskInfo64.exe
call :Code1
goto END

::====================================================================================
:Code1

timeout /t 15 /nobreak
for /f "delims=" %%F in ('dir /ad /b "%ProgramFiles%\CrystalDiskInfo\Smart"') do (
    set HardDisk=%%F
    echo !HardDisk!>>C:\Users\!Username!\Desktop\�w�Ы���
)
goto :eof

::====================================================================================
:END
exit

::====================================================================================