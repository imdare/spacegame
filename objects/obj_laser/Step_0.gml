if(!instance_exists(creator)){
	instance_destroy();
	exit;
}

x = creator.x;
y = creator.y;
direction = creator.image_angle;