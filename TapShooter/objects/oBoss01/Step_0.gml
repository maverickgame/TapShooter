/// @description Insert description here
// You can write your code in this editor
if (cankillplayer ==true)
{
	x = x + lengthdir_x(1.5, point_direction(x,y,oPlayer.x, oPlayer.y));
	y = y + lengthdir_y(1.5, point_direction(x,y,oPlayer.x, oPlayer.y));
}

if (hp <=0)
{
	global.points = global.points +10;
	global.respawn = false;
	instance_create_layer(x,y,"Instances",oPortal);
	instance_destroy();
	audio_play_sound(Explosion_22__3_,1000,false);
}