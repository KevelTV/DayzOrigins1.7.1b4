English version:
1. Install Beta Patch 103419 (This is currently stable patch for origins)
1.1 link: http://www.arma2.com/downloads/update/beta/ARMA2_OA_Build_103419.zip
2. Install latest version of mysql from official site
2.1 link: http://dev.mysql.com/downloads/mirror.php?id=414335
3. Install cracked premium version of navicate (for backup and more function)
3.1 PremNavicate Torrent: magnet:?xt=urn:btih:21161C5ECB772B92271460EA9E4624A23955EA02&dn=Navicat.Premium.Enterprise.v10.1.6.Key&tr=http%3a%2f%2fretracker.local%2fannounce
4. Extract all server files into your game folder / server folder
5. Edit files:
\dayz_1.origins.tavi\config.cfg
\dayz_1.origins.tavi\HiveExt.ini
\dayz_1.origins.tavi\BattlEye\BEServer.cfg
\MPMissions\dayz_1.origins.tavi\Debug\player_spawn_2.sqf
\MPMissions\dayz_1.origins.tavi\Camera\loginCamera.sqf
\MPMissions\dayz_1.origins.tavi\init.sqf

Russian version:
1. Скачайте и установите бета патч 103419 (это самый стабильный для origins бета патч)
1.1 Ссылка: http://www.arma2.com/downloads/update/beta/ARMA2_OA_Build_103419.zip
2. Скачайте и установите последнею версию mysql
2.1 Ссылка: http://dev.mysql.com/downloads/mirror.php?id=414335
3. Скачайте и установите взломанную версию navicate premium (для возможности автобэкапа)
3.1 PremNavicate Torrent: magnet:?xt=urn:btih:21161C5ECB772B92271460EA9E4624A23955EA02&dn=Navicat.Premium.Enterprise.v10.1.6.Key&tr=http%3a%2f%2fretracker.local%2fannounce
4. Разархивируйте все файлы сервера в текущую папку с игрой
5. Список файлов для редактирования:
\dayz_1.origins.tavi\config.cfg
\dayz_1.origins.tavi\HiveExt.ini
\dayz_1.origins.tavi\BattlEye\BEServer.cfg
\MPMissions\dayz_1.origins.tavi\Debug\player_spawn_2.sqf
\MPMissions\dayz_1.origins.tavi\Camera\loginCamera.sqf
\@dayz_1.origins.tavi.pbo\init\orgins14.sqf // данный файл надо вытащить отредактировать и заного вставить, после этого заного прописать верный ключ


Debug menu / дебаг меню
\MPMissions\dayz_1.origins.tavi\Debug\player_spawn_2.sqf find ~390 line and change it on your pref
\MPMissions\dayz_1.origins.tavi\Debug\player_spawn_2.sqf найдите ~390 строку и измените на нужное вам

Welcome message / приветствие
\MPMissions\dayz_1.origins.tavi\init.sqf find _nul = [] execVM "Camera\loginCamera.sqf"; uncomment if you need welcome title text (delete //)
\MPMissions\dayz_1.origins.tavi\init.sqf найдите //_nul = [] execVM "Camera\loginCamera.sqf"; разкоментируйте данный скрипт если вам нужно приветствите (удалите //)
\MPMissions\dayz_1.origins.tavi\Camera\loginCamera.sqf измените все сообщения здесь на нужные вам
\MPMissions\dayz_1.origins.tavi\Camera\loginCamera.sqf change all text on need you text

День и ночь \ Day 'n Night
\MPMissions\dayz_1.origins.tavi\init.sqf find [3,true,true] execFSM "core_time.fsm"; and change 3 on need you (example: [3,true,true] skip in day 3 minute , in night 6 or [3,true,true,8] skip 3 minute day / 8 minute night)
\MPMissions\dayz_1.origins.tavi\init.sqf найдите [3,true,true] execFSM "core_time.fsm"; и измените на нужные вам значения (пример стандартно стоит 3 минуты пропуск днем и 6 ночью (x2 ночью), если вы хотите пропуск ночью больше то добавьте вот так: [3,true,true,8] вот так будет ночью пропускаться 8 минут)


 all need configuration changed, if you need more instruction learn Russian languages dude
 Все остальное смотреть в видео, там я детально опишу фишки добавленные мною в сервер