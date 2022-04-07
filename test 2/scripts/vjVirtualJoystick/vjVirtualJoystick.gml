///@function			vjVirtualJoystic(_side,_config)
///@description			Create a Virtual Joystick
///@param {integer}		_side	Indicates the Joystick side on the screen
///								and the Joystick Id
///								global.__vj_SIDE_LEFT - Left Joystick
///								global.__vj_SIDE_RIGHT - Right Joystick
///@param {struct}		_config	The Joystick configuration struct
///@author  Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
///@copyright  Dijkstra Company S.A.S de C.V
function vjVirtualJoystick(_side,_config) constructor{
	id = _side;			//Joystick Id based on the screen position (Left or Right)
	x = 0;				// x-axis position
	y = 0;				// y-axis position
	r = 0;				// radius
	jX = 0;				// joystick x-axis position
	jY = 0;				// joystick y-axis position
	dR = 0;				// dead zone radius
	jR = 0;				// joystick radius
	jDir = 0;			// joystick direction
	jRot = 0;			// joystick rotation
	active = false;		// false - joystick is idle or in dead zone
	enable = true;		// joystick is enabled
	device = noone;		// device attached or touch attached
	
	// Validates the configuration struct and apply it
	if(is_struct(_config)){
		x = _config.x;
		y = _config.y;
		jX = _config.x;
		jY = _config.y;
		r = _config.r;
		dR = _config.dr;
		jR = _config.jr;
	}else{
		// TO-DO	
	}
	
	///@function		draw()
	///@description		Draws the Joystick on the screen
	function draw(){
		// Draw Joystick Background
		draw_set_color(c_white);
		draw_set_circle_precision(32);
		draw_set_alpha(0.1);
		draw_circle(x,y,r,false);
		draw_set_alpha(1);
		draw_circle(x,y,r,true);
		draw_set_alpha(0.2);
		draw_circle(x,y,2,false);
		draw_set_alpha(1);		
		
		// Draw the dead zone
		draw_set_alpha(0.2);
		draw_set_color(c_white);
		draw_circle(x,y,dR,false);
		
		// Draw Joistick
		// draw_set_circle_precision(32);
		draw_set_color(c_white);
		draw_set_alpha(0.9);
		draw_circle(jX,jY,jR,false);
		
		draw_set_alpha(1);
		draw_set_color(c_white);	
		// TO-DO: Add debug
		//draw_text_transformed(x,y-r*1.5,"J: " + string(id) + " D: " + string(device),2,2,0);
	}
	
	///@function		restart()
	///@description		Restart the joystick state to idle
	function restart(){
		jX = x;
		jY = y;
		active = false;
		enable = true;
		device = noone;
	}
	
	///@function		step()
	///@description		Calculate the joystick movment and direction
	function step(){
		if(device == noone){
			// Check if has a device attached
			restart();
			return;
		}
		active = device_mouse_check_button(device,mb_left);
		x1 = device_mouse_x(device);
		y1 = device_mouse_y(device);
		
		vj_distance = point_distance(jX,jY,x,y);		// Distance from Joystick to the center
		jDistance = point_distance(x1,y1,x,y);			
		jDir = point_direction(x1,y1,x,y) + 180;
		jRot = jDir - 90;

		//If is in dead zone, the Joystick is not active
		if(jDistance<dR){
			active = false;
		}
		
		// Is not in dead zone
		if(active){
			
			// Get the Joystick position
			if(jDistance<jR){
				jX = x1;
				jY = y1;
			}
			
			if(jDistance>=(jR)-2){
				jX = x + lengthdir_x(jR,jDir);
				jY = y + lengthdir_y(jR,jDir);
			}
			
		}else{
			// the joystick is idle
			jX = x;
			jY = y;
		}
	}
	
	
	///@function		removeDevice()
	///@description		deattach the touch / Mouse device attached to the Joystick
	function removeDevice(){
		restart();
		device = noone;	
	}
	
	/*
	*	Getters & Setters
	*	-----------------
	* Use getter and setter functions to avoid problems on variable name changes and new versions
	*/
	
	///@function		getRotation()
	///@description		Get the rotation angle
	function getRotation(){
		return jRot;
	}
	
	///@function		getDirection()
	///@description		Get the joystick direction
	function getDirection(){
		return jDir;
	}
	
	///@function	getID()
	///@descriotion Returns the Joystick ID
	function getID(){
		return id;
	}
	
	///@function				setDevice(_device)
	///@description				Attach one device input to the Joystick
	///@param {integet} _device	The device to attach
	function setDevice(_device){
		//show_debug_message("Joystick: " + string(id) + " has device " + string(_device));
		device = _device;
	}
	
	///@function		getDevice()
	///@description		Get the input device attached
	function getDevice(){
		return device;
	}
	
	///@function		getX()
	///@description		Returns the x-axis position
	function getX(){
		return x;
	}
	
	///@function			setX()
	///@description			Set de x-axis position
	///@param {integer} _x x-axis posiion
	function setX(_x){
		x = _x;
	}
	
	///@function		getY()
	///@description		Returns the y-axis position
	function getY(){
		return y;
	}
	
	///@function			setY()
	///@description			Set the y-axis position
	///@param {integer} _y	y-axis position
	function setY(_y){
		y = _y
	}
	
	///@function		getRadius()
	///@description		Return the radius
	function getRadius(){
		return r;
	}
	
	///@function			setRadius()
	///@description			Set the radius
	///@param {float} _r	Radius
	function setRadius(_r){
		r = _r;
		
	}
	
	///@function		isActive()
	///@description		Returns the joystick state
	///					true - the Joystick is active (moving)
	///					false - the Joystick is idle
	function isActive(){
		return active;
	}
	
	///@function			isEnable()
	///@description			Return true if the joystick is enabled
	function isEnable(){
		return enable;
	}
	
	///@function			setEnable(_b)
	///@description			Enables or disables the joystick
	///@param {boolen} _b	Set true to enable the joystick and false to disable it
	function setEnable(_b){
		enable = _b;
	}
	
	///@function setDeadZoneRadius(_dzr)
	///@description	Set the dead zone radius
	///@param {real} _dzr The dead zone radius
	function setDeadZoneRadius(_dzr){
		dR = _dzr;
	}
	
	///@function getDeadZoneRadius()
	///@description Returns the dead zone radius
	function getDeadZoneRadius(){
		return dR;
	}
	
	///@function setJoystickRadius(_jr)
	///@description Sets the inner joystick radius
	///@param {real} _jr The inner joystick radius
	function setJoystickRadius(_jr){
		jR = _jr
	}
	
	///@function getJoystickRadius()
	///@description Returns the inner joystick radius
	function getJoystickRadius(){
		return jR;	
	}
}