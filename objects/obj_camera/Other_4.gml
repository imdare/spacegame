/// @description Camera Setup

//camera
global.CameraX = 0;
global.CameraY = 0;
target = obj_ship;

global.CameraWidth = 1600;
global.CameraHeight = 1000;

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], global.CameraWidth, global.CameraHeight);

if(instance_exists(target)){
	global.CameraX = target.x - (global.CameraWidth/2);
	global.CameraY = target.y - (global.CameraHeight/2);

	global.CameraX = clamp(global.CameraX, 0, room_width-global.CameraWidth);
	global.CameraY = clamp(global.CameraY, 0, room_height-global.CameraHeight);
}

camera_set_view_pos(view_camera[0], global.CameraX, global.CameraY);

//GUI
display_set_gui_size(global.CameraWidth, global.CameraHeight);

//Display
displayScale = 1;
displayWidth = global.CameraWidth * displayScale;
displayHeight = global.CameraHeight * displayScale;

window_set_size(displayWidth,displayHeight);
surface_resize(application_surface,displayWidth,displayHeight);

alarm[0] = 1;
