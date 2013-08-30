DayZ Origins community build
============================

All credit goes to Cortez for all the hard work to make this mod available.
Credits for fix and update [Liq]Kevel

<u><b>Tools Required</b></u>
============================

- PBO tool which can be found in the tools folder.<br>
(NOTE: Make sure before you pack to the .pbo, you set the prefix to "z\addons\dayz_server")

<b>How To Pack PBO Correctly With PboManager</b>
- Open PboManager
- Right click dayz_server folder and select PBO Manager>Pack into "dayz_server.pbo"
- After packing the folder, click the green icon on PboManager and open the "dayz_server.pbo" you just packed.
- Next click on the blue icon to check the file properties.
- If you see "prefix" and "z\addons\dayz_server", your ok.
- If you don't see it, your still ok, right click the white area and select "Add".
- Under property, add "prefix", and under value, add "z\addons\dayz_server" (without the quotes)
- Close the PboManager and upload the file if you didn't pack it on the server.
- Now restart the server.


<u><b>Installing Database:</b></u>
============================

- You need to have MySQL version 5.5 and up. 
(Work great on  5.5.31-0+wheezy1 (debian). Older version have problem importing the .SQL file)
- For Windows servers, Navicate + MYSQL 5.5 and up works pretty good.
- Import \sqlfile\dayz_origins.sql into your database

(NOTE: If your having issues installing the functions, and get a message saying you don't have permission to install, you must install the functions as a 'root' user)


<u><b>Installing Files:</b></u>
============================
- Check install.txt for more information
- Check this video for more information: http://www.youtube.com/watch?v=9v1o7azbOLE
