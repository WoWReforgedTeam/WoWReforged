:: WaitForSeconds hack, pingelessel
:: Wait 10 sec
ping 127.0.0.1 -n 11 > nul

start /d "..\run_l10\" realmd.exe

:: Wait 2 sec
ping 127.0.0.1 -n 3 > nul

start /d "..\run_l10\" mangosd.exe

:: Wait 45 sec
ping 127.0.0.1 -n 46 > nul

start /d "..\run_blizzlike\" mangosd.exe