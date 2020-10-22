///@description spawn_off_camera
///@param <index> obj
///@param <real> number

function Spawn_off_Camera(obj, num){ 
	var pad = 64;
	var xx,yy;

repeat(num){
	xx = random_range(0,room_width);
	yy = random_range(0,room_height);

	while(point_in_rectangle(xx,yy, global.CameraX - pad, global.CameraY-pad, 
	global.CameraHeight+global.CameraY+pad, global.CameraWidth+global.CameraX+pad)){
 
	 xx = random_range(0,room_width);
	 yy = random_range(0,room_height);

	}
	
	instance_create_layer(xx,yy, "instances", obj);
}
}