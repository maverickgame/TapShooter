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


