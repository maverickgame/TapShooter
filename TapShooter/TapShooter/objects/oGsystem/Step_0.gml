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

//global stat upgrade
global.lvl = global.points/10;
global.mov = global.spd + global.lvl div 2;
global.dmg = global.atk + global.lvl div 2;
global.arm = global.def + global.lvl div 2;
global.stage = global.minutes div 3
