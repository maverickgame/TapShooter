/// @description Insert description here
// You can write your code in this editor



active = point_distance(x, y, oPlayer.x, oPlayer.y) <= 100;

if (active) 
{ 
     image_speed =0.5;
	 hp = hp+1;
	 if image_index = 6
	 {
		 image_index =3;
	 }
}

var layer_id = layer_get_id("WallTiles");
var tile_id = layer_tilemap_get_id(layer_id);


if hp >= 100
{ 
//	instance_destroy(oEnemy01);
//	instance_destroy(oEnemy02);
//	instance_create_layer(random(500),random(225),layer,oGateway);
//	layer_background_sprite(layer_background_get_id("Bck01"), choose(Bck01,Bck02,Bck03,Bck04));
//	global.respawn = true;
//	instance_destroy();
//	layer_background_sprite(layer_background_get_id("Bck01"), choose(Bck01,Bck02,Bck03,Bck04));
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
	hp = 0;
	instance_destroy();
}


