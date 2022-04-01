///@function		getDeviceZone(_device)
///@description		Identifies the screen zone where the device is moving
///					Returns __vj_SIDE_LEFT and __vj_SIDE_RIGHT
///@author  Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
///@copyright  Dijkstra Company S.A.S de C.V
function vjGetDeviceZone(_device){
	if(device_mouse_check_button(_device,mb_left)){
		x = device_mouse_x_to_gui(_device);// san device_mouse_x(_device);
	
		//Left side
		if(x >= global.sZ.l.sX && x <= global.sZ.l.eX){
			return global.__vj_SIDE_LEFT;
		}

		// right side
		if(x >= global.sZ.r.sX && x <= global.sZ.r.eX){
			return global.__vj_SIDE_RIGHT;
		}
		return global.__vj_SIDE_NONE;
	}
	return global.__vj_SIDE_NONE;
}