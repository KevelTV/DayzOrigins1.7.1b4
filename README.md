DayZ Origins community build:
All credit goes to Cortez for all the hard work to make this mod available.
Credits for fix and update files [Liq]Kevel


Tools Required:
PBO tool which can be found in the tools folder.
(NOTE: Make sure before you pack to the .pbo, you set the prefix to "z\addons\dayz_server")

How To Pack PBO Correctly With PboManager:
Open PboManager
Right click dayz_server folder and select PBO Manager>Pack into "dayz_server.pbo"
After packing the folder, click the green icon on PboManager and open the "dayz_server.pbo" you just packed.
Next click on the blue icon to check the file properties.
If you see "prefix" and "z\addons\dayz_server", your ok.
If you don't see it, your still ok, right click the white area and select "Add".
Under property, add "prefix", and under value, add "z\addons\dayz_server" (without the quotes)
Close the PboManager and upload the file if you didn't pack it on the server.
Now restart the server.


Installing Database:
You need to have MySQL version 5.5 and up. (Work great on 5.5.31-0+wheezy1 (debian). Older version have problem importing the .SQL file)
For Windows servers, MySql + Navicate Premium works pretty good.
(NOTE: If your having issues installing the functions, and get a message saying you don't have permission to install, you must install the functions as a 'root' user)


Installing Files:
Check instal.txt
