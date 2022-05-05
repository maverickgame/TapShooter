/// @description Insert description here
// You can write your code in this editor


count = instance_number(oEnemy01)+instance_number(oEnemy02);

maxcount = 50 + global.stage;


if global.respawn = false
{
	alarm [0] = 60;
	
}


var lay_id = layer_get_id("WallTiles");
var tile_id = layer_tilemap_get_id(lay_id);

while (place_meeting(spawnx, spawny,tile_id))
{
	spawnx = irandom_range(room_width+32, room_width-32);
	spawny = irandom_range(room_height+32, room_height-32);
}

