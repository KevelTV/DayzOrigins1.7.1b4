[] spawn {
while {true} do 
{
disableSerialization;
waitUntil {_display = findDisplay 49;!isNull _display;};
_btnSave = findDisplay 49 displayCtrl 103;_btnSave ctrlEnable false;_btnSave ctrlShow true;_btnSave ctrlSetText 'SERVER IP:';_btnSave ctrlCommit 0;
_btnRestart = findDisplay 49 displayCtrl 119;_btnRestart ctrlEnable false;_btnRestart ctrlShow true;_btnRestart ctrlSetText '77.243.98.230:2312';_btnRestart ctrlCommit 0;
_btnTitle0 = findDisplay 49 displayCtrl 523;_btnTitle0 ctrlShow true;_btnTitle0 ctrlSetText "Strike Arena";_btnTitle0 ctrlCommit 0;
_btnTitle1 = findDisplay 49 displayCtrl 121;_btnTitle1 ctrlShow true;_btnTitle1 ctrlSetText "strikearena.ru";_btnTitle1 ctrlCommit 0;
_btnTitle2 = findDisplay 49 displayCtrl 120;_btnTitle2 ctrlShow true;_btnTitle2 ctrlSetText "";_btnTitle2 ctrlCommit 0;
sleep 0.25;
HangenderRE=true;
};
};