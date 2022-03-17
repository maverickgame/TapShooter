/// @description Insert description here
// You can write your code in this editor
//if (room != Gamepause)
//{
//	room_goto(Gamepause);
//}
//else

//room_goto(Game);
//if (gamepause = false)
//{
//	instance_deactivate_layer("Instances");
//	gamepause = true;
//}

//if (gamepause = true)
//{
//	instance_activate_layer("Instances");
//	gamepause = false;
//}

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



