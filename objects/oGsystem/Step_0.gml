/// @description Insert description here
// You can write your code in this editor
//global playtime
global.seconds += (delta_time*0.00000001)*room_speed;

if (global.seconds >= 60)
{
	global.seconds = 0;
	global.minutes += 1;
}

if (global.minutes>= 60)
{
	global.minutes= 0;
	global.hours+= 1;
}


if (global.playerhp<=0)
{
	room_goto(Gameover);
}