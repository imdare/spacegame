//Destroy bullet outside of camera

if(!point_in_rectangle(x,y, 
global.CameraX, global.CameraY, 
global.CameraX + global.CameraWidth, 
global.CameraY + global.CameraHeight)
){
	instance_destroy();
}  