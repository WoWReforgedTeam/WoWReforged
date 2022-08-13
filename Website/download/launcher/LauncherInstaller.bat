:: WaitForSeconds hack, pingelessel
:: Wait 1 sec, so the open launcher can close properly
ping 127.0.0.1 -n 2 > nul

:: Copy the temp launcher to the main folder, overwriting the old one
xcopy "Reforged_Launcher.exe" "..\" /z /i /Y

del Reforged_Launcher.exe

ping 127.0.0.1 -n 3 > nul

:: Start the new launcher which will delete the temp folder including this file
start /d "..\" Reforged_Launcher.exe