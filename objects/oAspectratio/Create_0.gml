/// @description setting aspect ratio
// You can write your code in this editor
ideal_width = 0;
ideal_height = 256;

aspect_ratio = display_get_width()/display_get_height();

ideal_width = round(ideal_height*aspect_ratio);
//ideal_height = round(ideal_width/aspect_ratio);

//check for odd numbers
if (ideal_width & 1)
	ideal_width++;
	

for (var i=1; i<=room_last; i++)
{
	if (room_exists(i)
	{
		room_set_v(i,0,true,0,0,ideal_width,ideal_height,0,0,1,1	
	}
}