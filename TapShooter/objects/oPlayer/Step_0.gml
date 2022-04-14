/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_left)) x = x -3;
if (keyboard_check(vk_right)) x = x +3;
if (keyboard_check(vk_up)) y = y -3;
if (keyboard_check(vk_down)) y = y +3;


// prevent going over room
x = clamp (x,32,room_width-32);
y = clamp (y,32,room_height-32);
