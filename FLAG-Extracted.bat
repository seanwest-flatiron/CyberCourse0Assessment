@echo off

:: Get the path to the Desktop
set "desktopPath=%USERPROFILE%\Desktop"

:: Get the current directory path
set "currentPath=%CD%"

@echo off
set "str=KING-KONG-30"
set "part1=%str:~0,4%"
set "part2=%str:~5,4%"
set "part3=%str:~-2%"
set "modifiedStr=%part1%%part3%%part2%"


:: Check if the current path starts with the desktop path (case-insensitive)
:: echo %currentPath% | findstr /bic:"%desktopPath%" > nul
echo %currentPath% | findstr /i "\\Desktop" > nul
if errorlevel 1 (
    echo You either have not extracted this zip archive, or have not extracted it to your Desktop.
    echo Flag not received. Please try again.
) else (
    echo Congratulations!! You have successfully extracted this archive onto your Desktop!
    echo The Flag is: %modifiedStr%
)

pause
