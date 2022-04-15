global.vj_deviceCount = vjGetTouchCount(global.vj_maxDeviceCount);

if(global.vj_deviceCount == 0){
	global.vj_leftDeviceCount = 0;
	global.vj_rightDeviceCount = 0;
	// Deattach the devices
	dC.deatachAll();
}else{

	// Atach the first one device on each side to the respective joystick
	for(i=0; i<global.vj_deviceCount; i++){
		if(vjGetDeviceZone(i) == global.__vj_SIDE_LEFT){
			if(dC.getLeftJoystickDevice() == noone && dC.isAttached(i) == false){
				dC.attach(i,global.__vj_JOYSTICK_LEFT);
			}
			continue;
		}else if(vjGetDeviceZone(i) == global.__vj_SIDE_RIGHT){
			if(dC.getRightJoystickDevice() == noone && dC.isAttached(i) == false){
				dC.attach(i,global.__vj_JOYSTICK_RIGHT);
			}
			continue;
		}
	} // for end
	
	lJ.step();
	rJ.step();
}
