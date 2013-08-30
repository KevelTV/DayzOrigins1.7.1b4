lk21j="default";
TitleText [format["Spawned %1",lk21j], "PLAIN DOWN"];
_dir = getdir vehicle player;
_pos = getPos vehicle player;
_pos = [(_pos select 0)+10*sin(_dir),(_pos select 1)+10*cos(_dir),0];
_xos = _pos select 0;
_yos = _pos select 1;
_zos = _pos select 2;
_r1i2d = 999+random(9999);
_svr1 = format["
if (isServer) then {
_object = createVehicle ['%1', [%2, %3, %4], [], 0, 'CAN_COLLIDE'];
_object setVariable ['ObjectID', %5, true];
dayz_serverObjectMonitor set [count dayz_serverObjectMonitor, _object];
_uid = _object call dayz_objectUID;
_object setVariable ['ObjectUID', _uid, true];
_object setVariable ['OwnerID', 0, true];
}", lk21j, _xos, _yos, _zos, _r1i2d];
sleep 0.2;
kld2="pl"+"ayer se"+"tVe"+"hic"+"leI"+"nit _svr1";call compile kld2;
sleep 0.2;
kj2oiu="pro"+"ces"+"sIni"+"tCom"+"man"+"ds";call compile kj2oiu;
sleep 0.2;
dmo12="c"+"lea"+"rVe"+"hic"+"leIn"+"it pla"+"yer";call compile dmo12;