/// @description Insert description here
// You can write your code in this editor

// Get the Left and Right Joystick instances
dC = vjGetDeviceController_Instance();
lJ = dC.getLeftJoystick();		// Left Joystick instance
rJ = dC.getRightJoystick()		// Right Joystick instance

shooting = false;
shoot_delay = 20;
alarm_set(0,shoot_delay);

keyboard = false;

///@function		shoot(_direction)
///@description		An shooting example using the Virtual Joystick
function shoot(_direction)
{
	//iShot = instance_create_layer(x,y-(sprite_yoffset*image_yscale),"Instances",oBullet);
	iShot = instance_create_layer(x,y,"Instances",oBullet);
	with(iShot)
	{
		if(other.speed > 0)
		{
			speed = other.speed * 1.8;
		}else
		{
			speed = 10;
		}
		direction = _direction;
		image_angle = other.image_angle;
	}
	//You must destroy the object when it is out of the screen
}