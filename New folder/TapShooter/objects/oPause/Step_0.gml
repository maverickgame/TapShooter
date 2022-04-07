/// @description Insert description here
// You can write your code in this editor
//switch (gamepause)
//{
//	case false: 
//	instance_deactivate_layer("Instances");
//	gamepause = true;
//	break;
	
//	case true:
//	instance_activate_layer("Instances");
//	gamepause = false;
//	break;
//}
if (mouse_check_button_pressed(mb_left))
{
	if (position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),id))
	show_message("hellowordl");
}


