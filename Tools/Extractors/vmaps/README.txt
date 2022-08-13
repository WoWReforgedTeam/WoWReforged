Copy all files in this directory to your main WoW folder and execute makevmaps_SIMPLE.bat. When its finished delete the 'buildings' folder and copy the 'vmaps' folder to your 'MaNGOS' folder in the repack.

To enable the vmaps change the following lines in mangosd.conf to what they are here:

vmap.enableLOS = 1
vmap.enableHeight = 1