if ((getPlayerUID player) in ["3121033","155780","11580233"])  
then{ 
	titleText ["Добро пожаловать домой!", "PLAIN DOWN", 3]; titleFadeOut 3;
	}
	else {
titleText ["Вы находитесь на запретной территории!", "PLAIN DOWN", 3]; titleFadeOut 4;
sleep 5;
titleText ["Вход только для владельцев данной территории!", "PLAIN DOWN", 3]; titleFadeOut 4;
sleep 5;
titleText ["Рекомендую вернуться туда, откуда пришел!", "PLAIN DOWN", 3]; titleFadeOut 4;
sleep 5;
titleText ["Не хочешь уходить, тогда потанцуем!", "PLAIN DOWN", 3]; titleFadeOut 4;
sleep 3;
playSound "ogaoga1";
player playmove "actspercmstpsnonwnondnon_DancingDuoIvan";
sleep 7;
titleText ["Через 10 секунд ты умрёшь!", "PLAIN DOWN", 3]; titleFadeOut 4;
sleep 5;
titleText ["А ведь тебя предупреждали!", "PLAIN DOWN", 3]; titleFadeOut 4;
sleep 3;
playSound "geiger1";
sleep 0.1;
playSound "shot";
player setDamage 1;
r_player_blood = 0;
sleep 1;
r_player_dead = true;
};