/// @description Game stat tracker
//screen display
displayx = display_get_gui_width();
displayy = display_get_gui_width();

//score
global.points = 0;

//healthpoints
global.playerhp = 3;
global.playermaxhp = 50 ;

healthbar_width = 100;
healthbar_height = 18;
//healthbar_x = (500/2) - (healthbar_width/2);
//healthbar_y = (500/2) -100;

//timer
global.seconds =0;
global.minutes =0;
global.hours = 0;