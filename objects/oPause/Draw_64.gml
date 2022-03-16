/// @description Insert description here
// You can write your code in this editor
//draw_sprite(sPause,Game, displayx*0.1,displayy*0.1);

if (gamepause == true)
{
	draw_set_font(font);
	draw_set_halign(fa_center);
	draw_text(get_Middle_x, get_Middle_y, "Game Paused");
	
}