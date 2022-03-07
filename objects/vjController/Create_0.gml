sDX = 0;		// Start dragging x position
sDY = 0;		// Start dragging y position
dX = 0;			// Dragging actual x point
dY = 0;			// Dragging actual y point


dC = vjGetDeviceController_Instance();  // Device controller instance

lJ = dC.getLeftJoystick();	// Left Joystick instance
rJ = dC.getRightJoystick(); // Right Joystick instance

function onLeftStartDragging(_device)
{
//
}

function onRightStartDragging(_device)
{
//
}