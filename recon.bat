::Copyright (C) 2021 Anubosiris
@set mode=%1
@if "%mode%" NEQ "" goto once
@echo -----------------------------------------------------------
@if "%~2" NEQ "" (set ip=%~2) else (set ip=1.1.1.1)
@echo Start pinging %ip%...
:main
@ping -n 2 -w 50 -f -4 %ip% | findstr /r /c:"[0-9] *ms"
@if "%errorlevel%" EQU "0" (goto end)
@ipconfig /release & ipconfig /renew
@goto main
:end
@echo 
@echo -----------------------------------------------------------
@echo Ping successful...
@goto end
:once
@ipconfig /release & ipconfig /renew
@goto end
:end
@goto :eof
