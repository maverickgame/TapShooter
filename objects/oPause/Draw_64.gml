/// @description Insert description here
// You can write your code in this editor
//draw_sprite(sPause,Game, displayx*0.1,displayy*0.1);
//instance_place(display_get_gui_width()*0.3,display_get_gui_height()*0.1,layer);
//draw_self();
instance_place(display_get_gui_width()*0.3,display_get_gui_height()*0.01,oPause);
draw_sprite (sPause,0,display_get_gui_width()*0.3,display_get_gui_height()*0.01);
if (gamepause == true)
{
	draw_set_color (c_white);
	draw_set_halign(fa_center);
	draw_text(get_Middle_x, get_Middle_y, "Game Paused");
	
}