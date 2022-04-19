/// @description Game stat tracker 1
//screen display
displayx = display_get_gui_width();
displayy = display_get_gui_height();

//score
global.points = 0;

//healthpoints
global.playerhp = 50;
global.playermaxhp = 50 ;

healthbar_width = 100;
healthbar_height = 18;
//healthbar_x = (500/2) - (healthbar_width/2);
//healthbar_y = (500/2) -100;

//timer
global.seconds =0;
global.minutes =0;
global.hours = 0;


//stats
global.exp = 0;
global.lvl = 0;

global.atk = 1;
global.dmg = 0;

global.def = 1;
global.arm = 0;

global.spd = 1.5;
global.mov = 0;

global.stage = 0;
