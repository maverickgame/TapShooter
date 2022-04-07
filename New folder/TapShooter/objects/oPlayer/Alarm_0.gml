/// @description Insert description here
// You can write your code in this editor
///@description Controls the shooting delay
if(shooting == true)
{
	shoot(rJ.getDirection());
	alarm_set(0,shoot_delay);
}