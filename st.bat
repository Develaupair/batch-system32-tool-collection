::Copyright (C) 2021 Anubosiris
@if "%1" EQU "" (set /a s=1200) else (set /a s=%1)
@echo System goes to hibernation in %s% seconds. Press CTRL+C to cancel hibernation. Press any key to hibernate instantly.
@timeout /t %s%
@shutdown /h /f
@echo Hibernation initialized...
