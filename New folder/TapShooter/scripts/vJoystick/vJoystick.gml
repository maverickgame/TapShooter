///@function		vJoystick(_device,_enable)
///@description		Virtual Joystick Object
///@author			Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
///@decprecated		since version 2.0.0
function vJoystick(_device,_enable) constructor{
	x = 0;					// X-axis position
	y = 0;					// Y-axis position
	jPosX = 0;				// Joystick x-axis position
	jPosY = 0;				// Joystick y-axis position
	jRadius = 75;			// Main radius (Background circle)
	jIRadius = 32.5;		// The Joystick radius [added on 1.0.1]
	device = _device;		// Input device associated (Mouse or finger)
	enable = _enable;		// Indicates if the Joystick is active
	direction = 0;			// Joystick direction
	active = false;			// Indiates if the Joystick is working or is Idle
	strictMode = false;		// Enables the strict mode
	jTRadius = jRadius * 1.5;		// If strictMode is enabled, the Joystick will work only
									// in this tolerance zone [added in 1.0.2]
	jRDeadZone = jRadius * .22;		// Dead zone radius for the Joystick
	deadZone =  true;				// Indicates if the Joysticj is on the dead zone
	jZone = global.vj_NONE;			// Indicates the side where the Joystick works
	
	///@function		vj_create(_x,_y,_radius)
	///@descripton		Creates the joystick
	///@param {integer} _x position on x-axis
	///@param {integer} _y position on y-axis
	///@param {float}	_r1 the main radius
	///@author			Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
	///@decprecated		since version 2.0.0
	function vj_create(_x,_y,_r1){
		x = _x;
		y = _y;
		jPosX = _x;
		jPosY = _y;
		jRadius = _r1;
		jIRadius = jRadius / 2;
		jRDeadZone = jRadius * .20
		jZone = global.vj_NONE;
	}
	
	
	///@function		vj_create_custom(_x,_y,_r1,_r2)
	///@description		Creates and make the initial configuration
	///					[added on 1.0.1]
	///@param {integer} _x position on x-axis
	///@param {integer} _y position on y-axis
	///@param {float}	_r1 the main radius (background circle)
	///@param {float}	_r2 the joystick radius (joystick circle)
	///@author			Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
	///@decprecated		since version 2.0.0
	function vj_create_custom(_x,_y,_r1,_r2){
		x = _x;
		y = _y;
		jPosX = _x;
		jPosY = _y;
		jRadius = _r1;
		jIRadius = _r2;
		jRDeadZone = jRadius * .20
		jZone = global.vj_NONE;
	}
	
	///@function		setMainRadius(_radius1,_calcIRadius,_sizeFactor)
	///@description		Set the main radius (for the background cirlce), and 
	///					if _calcIRadius is set to "true" calculates the joystick
	///					radius using a sizefactor from (0.1 to 1)
	///					[added on 1.0.1]
	///@param {float}	_radius			The main radius (for the main circle at the background)
	///@param {boolean} _calcIRadius	Indicates if the inner radius (Joystick radius) must be calculated
	///									using a sizeFactor
	///@param {float}	_sizeFactor		The Joystick circle size factor with values from 0.1 to 1
	///									If the main circle is 100 and the size factor is 0.5, then the 
	///									joystick radius will be 50
	///@author					Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
	///@decprecated				since version 2.0.0
	function setMainRadius(_radius,_calcIRadius,_sizeFactor){
		jRadius = _radius;
		if( _calcIRadius == true && _sizeFactor != 0.0 ){
			jIRadius = jRadius * abs(_sizeFactor);	
			jRDeadZone = jRadius * .20
		}
	}
	
	///@function		setJoystickRadius(_radius)
	///@description		Set the Joystick circle radius
	///				[added on 1.0.1]
	///@param {float}	_radius		The Joystick circle radius
	///@author			Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
	///@decprecated		since version 2.0.0
	function setJoystickRadius(_radius){
		jIRadius = _radius;
	}
	
	///@function		vj_draw()
	///@description		Draws the Joystick on the screen
	///@author			Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
	///@decprecated		since version 2.0.0
	function vj_draw(){
		if(enable == true){
			// Draw Joystick Background
			draw_set_color(c_white);
			draw_set_circle_precision(32);
			draw_set_alpha(0.1);
			draw_circle(x,y,jRadius,false);
			draw_set_alpha(1);
			draw_circle(x,y,jRadius,true);
			draw_set_alpha(0.2);
			draw_circle(x,y,2,false);
			draw_set_alpha(1);		
		
			// Draw the dead zone
			draw_set_alpha(0.2);
			draw_set_color(c_white);
			draw_circle(x,y,jRDeadZone,false);
		
			// Draw Joistick
			// draw_set_circle_precision(32);
			draw_set_color(c_white);
			draw_set_alpha(0.9);
			draw_circle(jPosX,jPosY,jIRadius,false);
			
			draw_set_alpha(1);
			draw_set_color(c_white);
		}
	}
	
	///@function		setStrictMode(_bool)
	///@description		enable or disable the strict mode
	///					disabled - the Joystick works touching any part of the screen
	///					enabled - the Joystick works only in the restricted zone
	///@param {boolean} _bool	Enables or disables the strick mode
	///@author			Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
	///@decprecated		since version 2.0.0
	function setStrictMode(_bool){
		strictMode =  _bool;	
	}
	
	///@function		getStrictMode()
	///@description		Get the strict mode true if is enabled false if disabled
	///@author			Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
	///@decprecated		since version 2.0.0
	function getStrictMode(){
		return strictMode;
	}
	
	///@function		setToleranceRadius(_radius)
	///@description		Set the tolerance radius outside of the normal Joystick radius
	///					to detect finger movement
	///@author			Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
	///@decprecated		since version 2.0.0
	function setToleranceRadius(_radius){
		if( _radius <= jTRadius ){
			jTRadius = jRadius;
		}else{
			jTRadius = _radius;	
		}
	}
	
	///@function		vj_step()
	///@description		Calculates the direction and movment for the joystick
	///@author			Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
	///@decprecated		since version 2.0.0
	function vj_step(){
		active = device_mouse_check_button(device,mb_left);
		x1 = device_mouse_x(device);
		y1 = device_mouse_y(device);
		
		vj_distance = point_distance(jPosX,jPosY,x,y);		// Distance from Joystick to the center
		jDistance = point_distance(x1,y1,x,y); //CAMBIAR: Distancia del mouse al centro
		direction = point_direction(x1,y1,x,y) + 180;



		if(active){
			// Detect if the Joystick is in the dead zone
			if( vj_distance < jRDeadZone ){
				deadZone = true
			}else{
				deadZone = false
			}
			
			// Get the Joystick position
			if(jDistance<jRadius){
				jPosX = x1;
				jPosY = y1;
			}
			
			if(jDistance>=(jRadius)-2){
				jPosX = x + lengthdir_x(jRadius,direction);
				jPosY = y + lengthdir_y(jRadius,direction);
			}
			
		}else{
			// the joystick is idle
			jPosX = x;
			jPosY = y;
			deadZone =  false;
		}
	}
	
	///@function		isDeadZone()
	///@description		Indicates if the Joysticj is on the Dead Zone
	///@author			Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
	///@decprecated		since version 2.0.0
	function isDeadZone(){
		return deadZone;	
	}
	
	///@function		getX()
	///@description		Get the x-axis component
	///@author			Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
	///@decprecated		since version 2.0.0
	function getX(){
		return lengthdir_x(jRadius,direction)/jRadius;	
	}
	
	///@function		getY()
	///@description		Get the y-axis component
	///@author			Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
	///@decprecated		since version 2.0.0
	function getY(){
		return lengthdir_y(jRadius,direction)/jRadius;
	}
	
	///@function		getDirection()
	///@description		Get the direction or rotation
	///@author			Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
	///@decprecated		since version 2.0.0
	function getDirection(){
		show_debug_message(direction);
		return direction;
	}
	
	///@function		isEnable()
	///@description		Indicates if the Virtual Joystick is active
	///					true - Virtual Joystick is active (It will be drawed)
	///					false - Virtual Joystic is inactive (It will not be drawed)
	///@author			Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
	///@decprecated		since version 2.0.0
	function isEnable(){
		return enable;
	}
	
	///@function		isActive()
	///@description		Indicates when the Virtual Joystick is active
	///					true - Active
	///					false - inactive
	///@author			Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
	///@decprecated		since version 2.0.0
	function isActive(){
		return active;
	}
	
}