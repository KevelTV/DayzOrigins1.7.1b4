_hack 		= _this select 0;
_menuIndex  = _this select 1;
_script     = _this select 2;
_user       = _this select 3;

[_hack,_menuIndex, _user] execVM format["%1%2",HDIR,_script];

_check = vars select _menuIndex;

if(_check == "2") then
{
	cutText [format["%1 executed",_hack],"PLAIN DOWN"];
};
	
if((_check == "0") || (_check == "1")) then 
{
	if(_check == "0") then 
	{ 
		vars set [_menuIndex, "1"];
		lbSetColor[109, _menuIndex, [1,0,0,1]];
		cutText [format["%1 activated",_hack],"PLAIN DOWN"];
	}
	else
	{
		vars set [_menuIndex, "0"];
		lbSetColor[109, _menuIndex, [0,1,0,1]];
		cutText [format["%1 deactivated",_hack],"PLAIN DOWN"];
	};
};