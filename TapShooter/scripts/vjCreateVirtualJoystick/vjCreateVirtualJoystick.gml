///@function		vjCreateVirtualJoystick
///@description		Creates a virtual Joystick based on the screen side LEFT or RIGHT
///@author  Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
///@copyright  Dijkstra Company S.A.S de C.V
function vjCreateVirtualJoystick(_side,_bConfig){
	var vj = noone;
	if(is_struct(_bConfig) == false){
		show_debug_message("It's requieres a struct");
		return noone;
	}
	variable_global_exists("vj_vdevice"){
		if(_side == global.__vj_SIDE_LEFT){
			if(global.vj_vdevice[0] == noone){
				show_debug_message("Creating a new left joystick");
				vj = new vjVirtualJoystick(_side,_bConfig);
				global.vj_vdevice[0] = vj;
			}else{
				show_debug_message("The left joystick exists!");
				vj = global.vj_vdevice[0];
			}
		}else if(_side == global.__vj_SIDE_RIGHT){		// Right Joystick
			if(global.vj_vdevice[1] == noone){
				show_debug_message("Creating a new right joystick");
				vj = new vjVirtualJoystick(_side,_bConfig);
				global.vj_vdevice[1] = vj;
			}else{
				show_debug_message("The right joystick exists!");
				vj = global.vj_vdevice[1];
			}
		}
	}
	return vj;
}