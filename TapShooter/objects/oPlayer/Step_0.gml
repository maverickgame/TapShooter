/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_left)) x = x -3;
if (keyboard_check(vk_right)) x = x +3;
if (keyboard_check(vk_up)) y = y -3;
if (keyboard_check(vk_down)) y = y +3;


// prevent going over room
x = clamp (x,32,room_width-32);
y = clamp (y,32,room_height-32);

//knockback
Bosshit = instance_nearest(x, y, oBoss01);
if (place_meeting(x, y, Bosshit))
{
    knockback_direction = point_direction(Bosshit.x, Bosshit.y, x, y);
	x += lengthdir_x(100, knockback_direction);
	y += lengthdir_y(100, knockback_direction);
	global.playerhp = global.playerhp-10;
	audio_play_sound(Hit_hurt_106,1000,false);
}
