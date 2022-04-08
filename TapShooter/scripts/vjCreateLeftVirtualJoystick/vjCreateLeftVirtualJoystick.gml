///@function		vjCreateLeftVirtualJoystick()
///@description		Creates the left virtual joystick with the default configuration
///@author  Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
///@copyright  Dijkstra Company S.A.S de C.V
function vjCreateLeftVirtualJoystick(){
	return vjCreateVirtualJoystick(global.__vj_SIDE_LEFT,global.leftBasicConfig);
}