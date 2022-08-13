:: WaitForSeconds hack, pingelessel
:: Wait 1 sec, so the open launcher can close properly
ping 127.0.0.1 -n 1 > nul

:: Copy the temp launcher to the main folder, overwriting the old one
xcopy "Reforged Launcher.exe" "..\..\" /z /i /Y

:: Start the new launcher which will delete the temp folder including this file
start /d "..\" Reforged Launcher.exe