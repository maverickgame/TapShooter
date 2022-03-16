/// @description Stats display

//points display
draw_set_color (c_white);
draw_text(displayx*0.70,displayy*0.01, "Score:");
draw_text(displayx*0.90,displayy*0.01, global.points);

//healthbar display
draw_set_color (c_white);
draw_text(displayx*0.10,displayy*0.01, "HP: ");
draw_sprite (sHealthbar_bg,0,displayx*0.15,displayy*0.015);
draw_sprite_stretched(sHealthbar,0,displayx*0.15,displayy*0.015,(global.playerhp/global.playermaxhp)*healthbar_width, healthbar_height);
draw_sprite (sHealthbar_border,0,displayx*0.15,displayy*0.015);

//timer
draw_set_color (c_white);
draw_text( displayx*0.40,displayy*0.01, "Timer: " + string(global.hours) + ":" + string(global.minutes) + ":" + string(global.seconds)  );