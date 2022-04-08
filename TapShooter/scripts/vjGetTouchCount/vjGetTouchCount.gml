///@function			vjGetTouchCount()
///@description			Get the actual number of fingers
///@param {integer} _n	Max number of devices to detect
///@author  Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
///@copyright  Dijkstra Company S.A.S de C.V
function vjGetTouchCount(_n){
	count = 0;
	for(i = 0; i <= _n; i++){
		if(device_mouse_check_button(i,mb_left) == true){
			count = i+1;
			continue;
		}
		break;
	}
	return count;
}