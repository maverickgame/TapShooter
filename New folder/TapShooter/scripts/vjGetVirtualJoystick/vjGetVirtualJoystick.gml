///@function		vjGetVirtualJoystick(_side)
///@description     Get the Virtual Joystick according with the screen side where it works
///@param {integer}	_side	The Joystick side
///					LEFT - global.__vj_JOYSTICK_LEFT
///					RIGHT - global.__vj_JOYSTICK_RIGHT
///@author  Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
///@copyright  Dijkstra Company S.A.S de C.V
function vjGetVirtualJoystick(_side){
	if(variable_global_exists(global.vj_vdevice) && (_side == global.__vj_SIDE_LEFT || _side == global.__vj_SIDE_RIGHT)){
		if(global.vj_vdevice[_side] != noone){
			return global.vj_vdevice[_side];
		}
	}
	return noone;
}