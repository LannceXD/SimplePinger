@echo off
setlocal

:: Function to ping the website with the specified packet size
:ping_website
set /p website=Enter the website URL: 
set /p size=Enter the packet size (in bytes): 
echo.
ping %website% -l %size% -t
pause
goto :eof

:: Open the HTML GUI
start mshta "ping_gui.html"

:: Keep the batch file running
:loop
timeout /t 1 >nul
goto loop
