/// @description Insert description here
// You can write your code in this editor


global.grid = mp_grid_create(0, 0, room_width div 32, room_height div 32, 32, 32);
mp_grid_add_instances(global.grid,3, false);
with (oEnemy01)
{
    path = path_add();
    if mp_grid_path(global.grid, path, x, y, oPlayer.x, oPlayer.y, 1)
    {
        path_start(path, 0, 3, 0);
		alarm [1] = 30;
    }
}
