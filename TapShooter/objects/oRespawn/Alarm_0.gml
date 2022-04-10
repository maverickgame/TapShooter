/// @description Insert description here
// You can write your code in this editor

time = max(time-1,10);
alarm [0] = time;
sprite = irandom_range(0,7);

if sprite == 0
{
	instance_create_layer(random(500),random(500),layer,oEnemy01);
}

if sprite == 1
{
	instance_create_layer(random(500),random(500),layer,oEnemy02);
}

if sprite == 2
{
	instance_create_layer(random(500),random(500),layer,oEnemy03);
}

if sprite == 3
{
	instance_create_layer(random(500),random(500),layer,oEnemy04);
}
if sprite == 4
{
	instance_create_layer(random(500),random(500),layer,oEnemy05);
}

if sprite == 5
{
	instance_create_layer(random(500),random(500),layer,oEnemy06);
}

if sprite == 6
{
	instance_create_layer(random(500),random(500),layer,oEnemy07);
}

if sprite == 7
{
	instance_create_layer(random(500),random(500),layer,oEnemy08);
}
