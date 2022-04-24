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



if (tguiy <= 30 && tguix >=400)
{
	layer_background_sprite(layer_background_get_id("Bck01"), choose(Bck01,Bck02,Bck03,Bck04));
	global.respawn = true;
	instance_create_layer(random(500),random(225),layer,oGateway);
	instance_destroy(oEnemy01);
	instance_destroy(oEnemy02);
}

