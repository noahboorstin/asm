@echo off
cd "C:\Users\Noah Boorstin\Documents\asm\assemble"
:BEGINNING
spasm "C:\Users\Noah Boorstin\Documents\asm\apps\%1.z80" "C:\Users\Noah Boorstin\Documents\asm\appsexec\%1.8xk"
if errorlevel 1 goto ERRORS
goto DONE
:ERRORS
pause
goto BEGINNING
:DONE
taskkill /f /IM wabbitemu.exe
CALL wabbitemu.exe "C:\Users\Noah Boorstin\Documents\asm\appsexec\%1.8xk"
exit 