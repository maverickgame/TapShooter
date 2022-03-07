///@description deprecated
moving = device_mouse_check_button(sj_mouseDevice,mb_left);
x1 = device_mouse_x(sj_mouseDevice);
y1 = device_mouse_y(sj_mouseDevice);

jDistance = point_distance(x1,y1,x,y);
jDirection = point_direction(x1,y1,x,y) + 180;



if(moving){
	if(jDistance<jRadius){
		jPosX = x1;
		jPosY = y1;
	}
	if(jDistance>=(jRadius)-2){
		jPosX = x + lengthdir_x(jRadius,jDirection);
		jPosY = y + lengthdir_y(jRadius,jDirection);
	}
	global.jmove =  true;
	global.jdir = jDirection;
}else{
	jPosX = x;
	jPosY = y;
	global.jmove = false;
}