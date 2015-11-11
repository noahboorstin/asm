@echo off
cd "C:\Users\Noah Boorstin\Documents\asm\assemble"
taskkill /f /IM wabbitemu.exe
set str1=%2
if not %str1:app=%==%str1% goto App
spasm -T "C:\Users\Noah Boorstin\Documents\asm\source\%1.z80" "C:\Users\Noah Boorstin\Documents\asm\exec\%1.8xp"
wabbitemu.exe "C:\Users\Noah Boorstin\Documents\asm\exec\%1.8xp"
goto Done
:App
spasm -T "C:\Users\Noah Boorstin\Documents\asm\apps\%1.z80" "C:\Users\Noah Boorstin\Documents\asm\appsexec\%1.8xk"
wabbitemu.exe "C:\Users\Noah Boorstin\Documents\asm\appsexec\%1.8xk"
:Done
exit