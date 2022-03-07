///@description deprecated
/*
* Virtual Joystick v1.x (Deprecated)
*/
jPosX = x;
jPosY = y;
jRadius = 75;
x1 = 0;
y1 = 0;
jDistance = 0;
jDirection = 0;

global.jdir = jDirection;
global.jmove = false;

iseSprite = false;

if(!useSprite){
	image_index = noone;	
}

///@function drawJoystickBG()
///@description Draws the joystick background
function drawJoystickBG(){
	draw_set_circle_precision(32);
	draw_set_alpha(0.1);
	draw_circle(x,y,jRadius,false);
	draw_set_alpha(1);
	draw_circle(x,y,jRadius,true);
	draw_set_alpha(0.2);
	draw_circle(x,y,2,false);
	draw_set_alpha(1);	
}

function drawJoystick(){
	draw_set_circle_precision(32);
	draw_set_alpha(0.9);
	draw_circle(jPosX,jPosY,jRadius/2,false);
}