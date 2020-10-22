// ship debris
var	_xx = x;
var	_yy = y;
var _ib = image_blend;

with(obj_particles){
part_particles_create_colour(partsys,_xx,_yy, parttypeshipdebris,_ib, 15);
}

global.camerashake = 4;


//score
switch(object_index){
	case obj_raider: score += 15; break;
	case obj_hunter: score += 30; break;
	case obj_brute: score += 50; break;
}


//drops a powerup after destruction
if(irandom_range(0,2) == 0){
	instance_create_layer(x,y, "instances",obj_powerup);
}

//drops a pilot/live after destruction
if(irandom_range(0,2) == 0){
instance_create_layer(x,y,"instances",obj_pilot);
}