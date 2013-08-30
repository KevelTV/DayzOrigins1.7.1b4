private [ "_camera", "_welcomeMessage", "_camDistance" ];
_welcomeMessage = format["Добро пожаловать на сервер StrikeArena.Ru - Origins %1, Приятной игры!",format["%1", name player]];
_camDistance = 60;
 
waitUntil {!isNil ("dayzLoginRecord")};
 
//intro move
showCinemaBorder true;
camUseNVG false;
 
_camera = "camera" camCreate [(position player select 0)-2, position player select 1,(position player select 2)+_camDistance];
_camera cameraEffect ["internal","back"];
 
_camera camSetFOV 2.000;
_camera camCommit 0;
waitUntil {camCommitted _camera};
 
_camera camSetTarget vehicle player;
_camera camSetRelPos [0,0,2];
_camera camCommit 8;
 
cutText [_welcomeMessage, "PLAIN DOWN"];
sleep 2;
cutText ["Пожалуйста, уважайте других игроков и администраторов","PLAIN DOWN"];
sleep 2;
cutText ["Читерам пожизненный БАН, за нецензурную лексику КИК/БАН!","PLAIN DOWN"];
sleep 2;
cutText ["Сервер работает 24/7 с рестартами каждые 3 часа!","PLAIN DOWN"];

waitUntil {camCommitted _camera};
 
_camera cameraEffect ["terminate","back"];
camDestroy _camera;