///@function  vJoystick_init()
///@description  Initializes the virtual Joysticks system
///@author  Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
///@copyright  Dijkstra Company S.A.S de C.V
function vJoystick_init(){
	gml_pragma( "global", "vJoystick_init();");	//Initilize this script at the begining
	os_lock_orientation(false);
	/*
	* CONSTANTS
	*/
	
	
	
	// Sides where a Joystick can be painted
	global.__vj_SIDE_NONE = -1;		// No side defined
	global.__vj_SIDE_LEFT = 0;		// Left side defined
	global.__vj_SIDE_RIGHT = 1;		// Right side defined
	
	// Screen config type
	global.__vj_HSCREEN = 1;		// The screen is in horizontal mode (Landscape)
	global.__vj_VSCREEN = 2;		// The screen is in vertical mode (Portlate)
	
	global.__vj_JOYSTICK_LEFT = 0;	// Identifies the left joystick
	global.__vj_JOYSTICK_RIGHT = 1; // Identifies the right joystick
		
	global.vj_maxDeviceCount = 4	// Max mouse or touch devices to scann
	global.vj_deviceCount = 0;		// Total mouse or touch device count	
	global.vj_leftDeviceCount = 0;		// The total of devices on left side
	global.vJ_rightDeviceCount = 0;	// The total of devices on right side

		
	global.scrMiddle = {
		x0: 0,
		x1: 0,
		y0: 0,
		y1: 0
	}
	
	global.sZ = {				// Indicates the left and right boundaries
		l: {					// Left screen region
			sX:0,
			eX:0
		},
		r:{						// right screen region
			sX:0,
			sX:0
		}
	}
	
	
	
	global.vj_debug = false			// Debug mode enabled
	
	global.vj_vdevice[0] = noone;	// Left Virtual Joystick
	global.vj_vdevice[1] = noone;	// Right Virtual Joystic
	
	/*
	*
	*	Screen zones (Landscape)
	*
	*/
	
	// Get then middle of the screen
	//Landscape
	global.scrMiddle.x0 = display_get_gui_width()/2;
	global.scrMiddle.x1 = display_get_gui_width()/2;
	global.scrMiddle.y0 = 0;
	global.scrMiddle.y1 = display_get_gui_height();
	
	// Get the left and right screen zones
	global.sZ.l.sX = 0;							// Left zone start
	global.sZ.l.eX = display_get_gui_width()/2-1;	// Left zone end
	global.sZ.r.sX = display_get_gui_width()/2+1;	// Right zone start
	global.sZ.r.eX = display_get_gui_width();		// right zone end
	// y-axis limits
	global.minY = 0;							// Screen top (y-axis)
	global.maxY = display_get_gui_height();			// Screen end (y-axis)
	
	/*
	*	Initial configuration (Landscape)
	* =========================
	*	This values are computed, you can change it as you need
	*
	*/
	
	// Create the default configuration
	var mainRadius = 25;		// Change this value as you need
	var xl = global.sZ.l.sX + mainRadius*1.5;		// Left joystick's x-axis position
	var yl = global.maxY - mainRadius*1.5;			// Left joystick's y-axis position
	var xr = global.sZ.r.eX - mainRadius*1.5;		// Right joystick's x-axis position
	var yr = global.maxY - mainRadius*1.5;			// Right joystick's y-axis position
	var jr = mainRadius*0.5;						// inner joystick's circle radius
	var dzr = mainRadius*0.25;						// deadzone radius
	
	// Create the basic configuration
	// function vjCreateBasicConfig(x,y,radius,joystick_radius,deadzone_radius,enable) 
	global.leftBasicConfig = new vjCreateBasicConfig(xl,yl,mainRadius,jr,dzr,true);
	global.rightBasicConfig = new vjCreateBasicConfig(xr,yr,mainRadius,jr,dzr,true);
	
	// Create the device controller
	global._vj_DeviceController_Instance = new vjDeviceController();
	
	// Create and attach the left and right joysticks
	global._vj_DeviceController_Instance.setLeftJoystick(vjCreateLeftVirtualJoystick());
	global._vj_DeviceController_Instance.setRightJoystick(vjCreateRightVirtualJoystick());

}