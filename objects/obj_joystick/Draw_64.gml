///@description deprecated
if(useSprite){
	draw_set_alpha(0.3);
	draw_sprite(spr_joyBG,0,x,y)
	draw_set_alpha(1);
	draw_sprite(spr_joystick,0,jPosX,jPosY);
}else{
	// Draw background
	drawJoystickBG();
	drawJoystick();
}

