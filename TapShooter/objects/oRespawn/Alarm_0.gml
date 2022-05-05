/// @description Insert description here
// You can write your code in this editor

//if global.respawn = true
//{
if (maxcount > count)

{
time = max(time-1,10);
alarm [0] = time;
sprite = irandom_range(0,0);

	if sprite == 0
	{
		//instance_create_layer(random(500),random(500),layer,oEnemy01);
		instance_create_layer(spawnx,spawny,layer,oEnemy01);
		spawnx = irandom_range(100, 500);
		spawny = irandom_range(100, 500);
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

}

else
{
	alarm [0] = 60;
}
	
//}
