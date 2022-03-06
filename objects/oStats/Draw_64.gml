/// @description Stats display

//points display
draw_set_color (c_white);
draw_text(40,50,global.points);

draw_text(50,100,displayx);
draw_text(50,150,displayy);
draw_text(displayx,displayy,"0000hahaha1111");

//healthbar display
draw_sprite (sHealthbar_bg,0,healthbar_x,healthbar_y);
draw_sprite_stretched(sHealthbar,0,healthbar_x,healthbar_y,(global.playerhp/global.playermaxhp)*healthbar_width, healthbar_height);
draw_sprite (sHealthbar_border,0,healthbar_x,healthbar_y);