/// @description Insert description here
// You can write your code in this editor

active = point_distance(x, y, oPlayer.x, oPlayer.y) <= 200;

if (active) 
{ 
     image_speed =0.5;
	 hp = hp+1;
	 if image_index = 6
	 {
		 image_index =3;
	 }
}

else
{
	image_speed = 0;
	image_index = 1;
}




if hp >=100
{
instance_create_layer(x,y,"Instances",oExplosion);
instance_create_layer(x,y,layer,oBoss01);
instance_destroy();
}
