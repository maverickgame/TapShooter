/// @description Insert description here
// You can write your code in this editor
// This code represents a use example

draw_self();

// Player movment Left, Right, Up and Down
if(lJ != noone && lJ.isActive() == true){
	direction = lJ.getDirection();
	speed = global.mov;
}else{
	speed = 0
}

// Player rotation 
if(rJ != noone && rJ.isActive() == true){
	image_angle = rJ.getRotation();
	if(shooting == false){ //It is just starting shooting
		shooting = true;
		alarm_set(0,1);
	}else{
		shooting = true;
	}
}else{
	shooting = false;
}

