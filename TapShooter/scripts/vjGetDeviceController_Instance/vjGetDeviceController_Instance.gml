///@function			vjGetDeviceController_Instance()
///@description			Returns the Device controller Instance
///@author  Jesus Alvarado Bastida <jalvarado@dijkstracompany.com>
///@copyright  Dijkstra Company S.A.S de C.V
function vjGetDeviceController_Instance(){
	if(global._vj_DeviceController_Instance == noone){
		global._vj_DeviceController_Instance = new vjDeviceController();
	}
	return global._vj_DeviceController_Instance;
}