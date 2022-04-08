///@function		create_vjConfig()
///@description		Creates the basic configuration for a Joystick
///@param {integer} _x The x-axis initial position
///@param {integer} _y The y-axis initial position
///@param {float}	_r The main radius for the background circle
///@param {float}	_jr The joystick circle radius
///@param {float}	_dr The deadzone circle radius
///@author  Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
///@copyright  Dijkstra Company S.A.S de C.V
function vjCreateBasicConfig(_x,_y,_r,_jr,_dr,_enable) constructor{
	x = _x;				// Joystick X-axis position
	y = _y;				// Jostick Y-axis position
	r = _r;				// Main radius
	jr = _jr;			// Joystick radius
	dr = _dr;			// Dead zone radius
	enable = _enable;	// Joystick state enable (true), disable (false)
}