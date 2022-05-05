/// @description Insert description here
// You can write your code in this editor



time = 60;
alarm [0] = time;
alarm [1] = time;
count = 0;
global.respawn = true;
grid = 0;

instance_create_layer(random(500),random(225),layer,oGateway);


global.spawnok = false;
//global.spawngrid = mp_grid_create(0, 0, room_width div 32, room_height div 32, 32, 32);
//mp_grid_add_instances(grid,, true);

spawnx = irandom_range(room_width+32, room_width-32);
spawny = irandom_range(room_height+32, room_height-32);

