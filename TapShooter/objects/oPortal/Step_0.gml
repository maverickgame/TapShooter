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



if hp >= 100
{ 
	instance_destroy(oEnemy01);
	instance_destroy(oEnemy02);
	instance_create_layer(random(500),random(225),layer,oGateway);
	layer_background_sprite(layer_background_get_id("Bck01"), choose(Bck01,Bck02,Bck03,Bck04));
	global.respawn = true;
	instance_destroy();
}


