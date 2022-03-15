///@description Controls the shooting delay
if(shooting == true){
	shoot(rJ.getDirection());
	alarm_set(0,shoot_delay);
}