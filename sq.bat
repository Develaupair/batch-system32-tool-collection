@if "%1" EQU "" (set /a s=0) else (set /a s=%1)
@echo System shutdown in %s% seconds. Press CTRL+C to cancel shutdown. Press any key to shutdown instantly.
@timeout /t %s%
@taskkill /f /t /im chrome.exe 2>NUL
@taskkill /f /t /im firefox.exe 2>NUL
@taskkill /f /t /im msedge.exe>NUL
@taskkill /f /t /im brave.exe>NUL
@taskkill /f /t /im iexplorer.exe>NUL
@taskkill /f /t /im opera.exe 2>NUL
@echo Browsers killed.
@shutdown -p -f