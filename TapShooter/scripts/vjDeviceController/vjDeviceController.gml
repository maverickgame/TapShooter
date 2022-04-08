///@function		jvDeviceController()
///@description		Helps to manage the  device attachment (touch)
///@author  Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
///@copyright  Dijkstra Company S.A.S de C.V
function vjDeviceController() constructor{
	
	lDev = -1;				// left device (-1 is for none)
	rDev = -1;				// right device (-1 is for none)
	lJ = noone;				// Left Joystick Object
	rJ = noone;				// Right Joystick Object
	
	
	///@function		isAttached(_device)
	///@description		Test if the device is attached
	///@param {integer} _device The device index
	function isAttached(_device){
		if(lDev == _device || rDev == _device){
			return true;
		}
		return false;
	}
	
	///@function		attach(_device, __vj_joystick)
	///@description		attach a devite to a joystick
	///@param {integer} _device	The device Id
	///@param {integer} __vj_joystick The joystick identifier
	function attach(_device, __vj_joystick){
		if(__vj_joystick == global.__vj_JOYSTICK_LEFT && lJ != noone){
			lDev = _device;
			lJ.setDevice(_device);
			return;
		}
		
		if(__vj_joystick == global.__vj_JOYSTICK_RIGHT && rJ != noone){
			rDev = _device;
			rJ.setDevice(_device);
			return;
		}
	}
	
	///@function		deattach()
	///@description		Deattach one Joystick
	function deattach(__vj_joystick){
		if(__vj_joystick == global.__vj_JOYSTICK_LEFT && lJ != noone){
			lJ.removeDevice();
			return;
		}
		
		if(__vj_joystick == global.__vj_JOYSTICK_RIGHT && rJ != noone){
			rJ.removeDevice();
			return;
		}
	}
	
	///@function		deatachAll()
	///@description		Deattaches all the devices
	function deatachAll(){
		lDev = -1;
		rDev = -1;
		lJ.removeDevice();
		rJ.removeDevice();
	}
	
	///@function		removeAll()
	///@description		removes all the joysticks
	function removeAll(){
		removeLeftJoystick();
		removeRightJoystick();
	}
	
	///@function		setLeftJoystick(_joystick)
	///@description		Set the left joystick
	///@param {object}	_joystick	Joystick reference
	function setLeftJoystick(_joystick){
		lJ = _joystick;
		show_debug_message("Set Left Joystick");
	}
	
	///@function		getLeftJoystick()
	///@description		Get the left Joystick
	function getLeftJoystick(){
		return lJ;
	}
	
	///@function		removeLeftJoystick()
	///@description		removes the left joystick
	function removeLeftJoystick(){
		lJ = noone;	
	}
	
	///@function		getLeftJoystickDevice()
	///@description		Get the device attached to the Left Joystick
	function getLeftJoystickDevice(){
		if(lJ != noone){
			return lJ.getDevice();	
		}
		
		return -1;
	}
	
	///@function		setRightJoystick(_joystick)
	///@description		Set the right joystick
	///@param {object}	_joystick Joysticj reference
	function setRightJoystick(_joystick){
		rJ = _joystick;
	}
	
	///@function		getRightJoystick(_joystick)
	///@description		Get the right joystick
	function getRightJoystick(){
		return rJ;
	}
	
	///@function		removeRightJoystick()
	///@description		removes the right joystick
	function removeRightJoystick(){
		rJ = noone;
	}
	
	///@function		getRightJoystickDevice()
	///@description		Get the device attached to the Right Joystick
	function getRightJoystickDevice(){
		if(rJ != noone){
			return rJ.getDevice();
		}
		return -1;
	}
	
	
}