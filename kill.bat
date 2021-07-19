::Copyright (C) 2021 Anubosiris
@taskkill /f /t /im %1
@if "%ERRORLEVEL%" NEQ "0" taskkill /f /t /im %1.exe
