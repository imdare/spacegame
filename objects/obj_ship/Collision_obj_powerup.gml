
with(other){
	var powerup_type = image_index;
	instance_destroy();
}

switch(powerup_type){
	case powerups.invincible:
	//make player invincible
	invincible = true;
	alarm[1] = 8*room_speed;
	break;

	default:
	//change players guns
	guns = powerup_type;
	alarm[0] = 5*room_speed;
	break;
}

