/// @description Stats display

//points display
draw_set_color (c_white);
draw_text(displayx*0.70,displayy*0.01, "Score:");
draw_text(displayx*0.90,displayy*0.01, global.points);

//healthbar display
draw_set_color (c_white);
draw_text(displayx*0.001,displayy*0.01, "HP: ");
draw_sprite (sHealthbar_bg,0,displayx*0.05,displayy*0.015);
draw_sprite_stretched(sHealthbar,0,displayx*0.05,displayy*0.015,(global.playerhp/global.playermaxhp)*healthbar_width, healthbar_height);
draw_sprite (sHealthbar_border,0,displayx*0.05,displayy*0.015);

