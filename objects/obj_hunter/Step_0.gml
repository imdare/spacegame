event_inherited();

//if player exists
if(!instance_exists(obj_ship)) exit; 

//if player is inside range
if(point_distance(x,y, obj_ship.x,obj_ship.y) < 500){ //radius

//turn to look at player ship
	var new_angle = image_angle;
	new_angle = point_direction(x,y, obj_ship.x, obj_ship.y);
	new_angle = image_angle - angle_difference(image_angle,new_angle);
	image_angle = lerp(image_angle,new_angle, 0.1);
	direction = image_angle;
	
//keep distance from player	
if(point_distance(x,y, obj_ship.x,obj_ship.y) < 300){
		speed -= 0.05;
} else {
	speed += 0.01;
}


	//fire bullet
	bulletcounter++;
	if (bulletcounter >= 60){
	create_bullet(image_angle,8,faction,id);
	bulletcounter = 0;
	}

} else { //otherwise, no change
	speed = lerp(speed,originalspeed,0.1);
}