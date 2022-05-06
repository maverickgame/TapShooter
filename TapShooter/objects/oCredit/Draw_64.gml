/// @description Insert description here
// You can write your code in this editor

if credit = true
{
	
draw_set_color(c_black);
//draw_set_valign(fa_bottom);
draw_set_halign(fa_center);
texty -= scroll_speed;
//draw_rectangle( 0, 0, room_width, room_height,true);
draw_rectangle_colour( 0, 0, room_width, room_height, c_yellow, c_white, c_yellow, c_white, false);
draw_text_ext(textx, texty, string(texts), line_height, display_get_gui_width()-32);
//draw_text_ext(51, 50, string(string_height(texts)+texty), line_height, room_width);

draw_set_color(c_green);
draw_set_halign(fa_top);
draw_set_valign(fa_left);
draw_text_ext(0,0, string((string_height(texts)+texty) div 10), line_height, display_get_gui_width()-32);

draw_self();
}

