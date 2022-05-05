/// @description Insert description here
// You can write your code in this editor

draw_sprite (sPause,0,display_get_gui_width()*0.02,display_get_gui_height()*0.01);
//draw_self ();


if (gamepause == true)
{
	draw_set_color (c_black);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_middle);
	draw_text(display_get_gui_width()*0.5, display_get_gui_height()*0.2, "Game Paused");
	draw_text(display_get_gui_width()*0.5, display_get_gui_height()*0.3, "Stage: " + string(global.stage));
	draw_text(display_get_gui_width()*0.5, display_get_gui_height()*0.4, "Level: " + string(global.lvl));
	draw_text(display_get_gui_width()*0.5, display_get_gui_height()*0.5, "Attack: " + string(global.dmg));
	draw_text(display_get_gui_width()*0.5, display_get_gui_height()*0.6, "Defense: " + string(global.arm));
	draw_text(display_get_gui_width()*0.5, display_get_gui_height()*0.7, "Speed: " + string(global.mov));
	draw_sprite (sHome,0,display_get_gui_width()*0.30,display_get_gui_height()*0.01);
}


