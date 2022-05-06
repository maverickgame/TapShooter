/// @description Insert description here
// You can write your code in this editor
if (cankillplayer == true) 
{
	global.playerhp = global.playerhp-1;
	instance_destroy();
	audio_play_sound(Hit_hurt_106,1000,false);
}