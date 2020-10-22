//@discription loses a live when destroyed
lives -= 1;
var	_xx = x;
var	_yy = y;
var _ib = image_blend;

with(obj_game){
		alarm[1] = room_speed;
}

 instance_destroy();
 

with(obj_particles){
part_particles_create_colour(partsys,_xx,_yy, parttypeshipdebris,_ib, 15);
}