/// @description Insert description here
// You can write your code in this editor
tguix = event_data[? "guiposX"];
tguiy = event_data[? "guiposY"];


if (tguiy <= 30 && tguix <=50)
switch (gamepause)
{
	case false: 
	instance_deactivate_layer("Instances");
	gamepause = true;
	break;
	
	case true:
	instance_activate_layer("Instances");
	gamepause = false;
	break;
}



var layer_id = layer_get_id("WallTiles");
var tile_id = layer_tilemap_get_id(layer_id);



if (tguiy <= 30 && tguix >=400)
{
	layer_background_sprite(layer_background_get_id("Bck01"), choose(Bck01,Bck02,Bck03,Bck04));
	global.respawn = true;
	instance_create_layer(random(500),random(225),layer,oGateway);
	instance_destroy(oEnemy01);
	instance_destroy(oEnemy02);
	instance_destroy(oLevel);
	instance_destroy(oGateway);
	instance_destroy(oPlayer);
	tilemap_clear(tile_id, 0);
	instance_create_layer(x/2 , y/2, "Instances", oLevel);
	instance_create_layer(x/2 , y/2, "Instances", oGateway);
}

