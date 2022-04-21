/// @description Insert description here
// You can write your code in this editor

nearest_slug = instance_nearest(x, y, oBoss01);
if (place_meeting(x, y, nearest_slug)){
    knockback_direction = point_direction(nearest_slug.x, nearest_slug.y, x, y);
    x += lengthdir_x(-5, knockback_direction);
    y += lengthdir_y(-5, knockback_direction);
}
