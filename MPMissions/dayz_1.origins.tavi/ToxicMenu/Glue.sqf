// Bitrate's "Super Glue" Script. Enjoy!

titleText ["Set first target in 5 secs.","PLAIN DOWN"]; titleFadeOut 5;
sleep 5;
_GLUETarget = cursorTarget;
titleText ["Set second target in 7 secs.","PLAIN DOWN"]; titleFadeOut 7;
sleep 7;
_GLUETarget2 = cursorTarget;

gluemenu = 
[
["",true],
["Left to Right Menu. Select option:", [-1], "", -5, [["expression", ""]], "1", "0"],
["Same Alignment", [2], "", -5, [["expression", "select_x=0;DelaySelected=true;"]], "1", "1"],
["Left 1 meters", [3], "", -5, [["expression", "select_x=-1;DelaySelected=true;"]], "1", "1"],
["Left 2 meters", [4], "", -5, [["expression", "select_x=-2;DelaySelected=true;"]], "1", "1"],
["Left 5 meters", [5], "", -5, [["expression", "select_x=-5;DelaySelected=true;"]], "1", "1"],
["Left 10 meters", [6], "", -5, [["expression", "select_x=-10;DelaySelected=true;"]], "1", "1"],	
["Right 1 meters", [7], "", -5, [["expression", "select_x=1;DelaySelected=true;"]], "1", "1"],
["Right 2 meters", [8], "", -5, [["expression", "select_x=2;DelaySelected=true;"]], "1", "1"],
["Right 5 meters", [9], "", -5, [["expression", "select_x=5;DelaySelected=true;"]], "1", "1"],	
["Right 10 meters", [10], "", -5, [["expression", "select_x=10;DelaySelected=true;"]], "1", "1"],	
["", [-1], "", -5, [["expression", ""]], "1", "0"],
["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

gluemenu2 = 
[
["",true],
["Front to Back Menu. Select option:", [-1], "", -5, [["expression", ""]], "1", "0"],
["Same Alignment", [2], "", -5, [["expression", "select_y=0;DelaySelected2=true;"]], "1", "1"],
["Back 1 meters", [3], "", -5, [["expression", "select_y=-1;DelaySelected2=true;"]], "1", "1"],
["Back 2 meters", [4], "", -5, [["expression", "select_y=-2;DelaySelected2=true;"]], "1", "1"],
["Back 5 meters", [5], "", -5, [["expression", "select_y=-5;DelaySelected2=true;"]], "1", "1"],
["Back 10 meters", [6], "", -5, [["expression", "select_y=-10;DelaySelected2=true;"]], "1", "1"],	
["Front 1 meters", [7], "", -5, [["expression", "select_y=1;DelaySelected2=true;"]], "1", "1"],
["Front 2 meters", [8], "", -5, [["expression", "select_y=2;DelaySelected2=true;"]], "1", "1"],
["Front 5 meters", [9], "", -5, [["expression", "select_y=5;DelaySelected2=true;"]], "1", "1"],	
["Front 10 meters", [10], "", -5, [["expression", "select_y=10;DelaySelected2=true;"]], "1", "1"],	
["", [-1], "", -5, [["expression", ""]], "1", "0"],
["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

gluemenu3 = 
[
["",true],
["Above or Below Menu. Select option:", [-1], "", -5, [["expression", ""]], "1", "0"],
["Same Alignment", [2], "", -5, [["expression", "select_z=0;DelaySelected3=true;"]], "1", "1"],
["Below 1 meters", [3], "", -5, [["expression", "select_z=-1;DelaySelected3=true;"]], "1", "1"],
["Below 2 meters", [4], "", -5, [["expression", "select_z=-2;DelaySelected3=true;"]], "1", "1"],
["Below 5 meters", [5], "", -5, [["expression", "select_z=-5;DelaySelected3=true;"]], "1", "1"],
["Below 10 meters", [5], "", -5, [["expression", "select_z=-10;DelaySelected3=true;"]], "1", "1"],	
["Above 1 meters", [6], "", -5, [["expression", "select_z=1;DelaySelected3=true;"]], "1", "1"],
["Above 2 meters", [7], "", -5, [["expression", "select_z=2;DelaySelected3=true;"]], "1", "1"],
["Above 5 meters", [8], "", -5, [["expression", "select_z=5;DelaySelected3=true;"]], "1", "1"],	
["Above 10 meters", [8], "", -5, [["expression", "select_z=10;DelaySelected3=true;"]], "1", "1"],	
["", [-1], "", -5, [["expression", ""]], "1", "0"],
["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];



showCommandingMenu '#USER:gluemenu';
WaitUntil{DelaySelected};
DelaySelected=false;	
showCommandingMenu '#USER:gluemenu2';
WaitUntil{DelaySelected2};
DelaySelected2=false;
showCommandingMenu '#USER:gluemenu3';
WaitUntil{DelaySelected3};
DelaySelected3=false;

_GLUETarget attachTo [_GLUETarget2, [select_x,select_y,select_z]];
titleText ["Glue applied. Probably!","PLAIN DOWN"]; titleFadeOut 4;