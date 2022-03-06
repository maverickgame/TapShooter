/// @description Insert description here
// You can write your code in this editor
with (instance_create_layer(x,y,layer,oBullet))
{
	direction = point_direction (x,y,mouse_x,mouse_y);
	speed = 6;
}