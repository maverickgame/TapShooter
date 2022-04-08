/// @description Insert description here
// You can write your code in this editor

time = max(time-1,10);
alarm [0] = time;
sprite = irandom_range(0,1);

if sprite == 0
{
	instance_create_layer(random(500),random(500),layer,oEnemy01);
}

if sprite == 1
{
	instance_create_layer(random(500),random(500),layer,oEnemy02);
}