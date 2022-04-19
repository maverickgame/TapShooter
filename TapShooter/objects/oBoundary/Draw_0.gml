/// @description Insert description here
// You can write your code in this editor
your_camera_left_edge = 1;
your_camera_right_edge = 2;

sWidth = 16
for (var i = 0; i < room_width; i += sWidth) {
    if(your_camera_left_edge < sWidth and i > your_camera_left_edge-sWidth and i<your_camera_right_edge+sWidth) {
        draw_sprite(Boundary,0,i,0)
    }
}


