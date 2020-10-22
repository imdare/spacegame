/// @description Camera Follow Ship

if(instance_exists(target)){
	global.CameraX = target.x - (global.CameraWidth/2);
	global.CameraY = target.y - (global.CameraHeight/2);

	global.CameraX = clamp(global.CameraX, 0, room_width-global.CameraWidth);
	global.CameraY = clamp(global.CameraY, 0, room_height-global.CameraHeight);
}

//Camera shake
global.CameraX += random_range(-global.camerashake, global.camerashake);
global.CameraY += random_range(-global.camerashake, global.camerashake);

if(global.camerashake > 0){
	global.camerashake -= 0.2;
	if(global.camerashake < 0) global.camerashake =0;
}


//xxx
camera_set_view_pos(view_camera[0], global.CameraX, global.CameraY);


layer_x("Parallax_0", global.CameraX*.98);
layer_y("Parallax_0", global.CameraY*.98);

layer_x("Parallax_1", global.CameraX*.92);
layer_y("Parallax_1", global.CameraY*.92);

layer_x("Parallax_2", global.CameraX*.90);
layer_y("Parallax_2", global.CameraY*.90);

layer_x("Parallax_3", global.CameraX*.88);
layer_y("Parallax_3", global.CameraY*.88); 
