private["_charID","_object","_worldspace","_class","_allowed","_uid","_key"];
//[dayz_characterID,_tent,[_dir,_location],"TentStorage"]
_charID =		_this select 0;
_object = 		_this select 1;
_worldspace = 	_this select 2;
_class = 		_this select 3;

diag_log format ["_charID=%1,_object=%2,_worldspace=%3,_class=%4",_charID,_object,_worldspace,_class];

if (!(_object isKindOf "Building")) exitWith {
	deleteVehicle _object;
};
_allowed = [_object] call check_publishobject;
if (!_allowed) exitWith { diag_log format ["Not allowed %1",_class]; };


//diag_log ("PUBLISH: Attempt " + str(_object));

//get UID
_uid = _worldspace call dayz_objectUID2;

//Send request
_key = format["CHILD:308:%1:%2:%3:%4:%5:%6:%7:%8:%9:",dayZ_instance, _class, 0 , _charID, _worldspace, [], [], 0,_uid];
//diag_log ("HIVE: WRITE: "+ str(_key));
_key call server_hiveWrite;

_object setVariable ["ObjectUID", _uid,true];

ori_servObjMonitor set [count ori_servObjMonitor,_object];

//diag_log ("PUBLISH: Created " + (_class) + " with ID " + _uid);
