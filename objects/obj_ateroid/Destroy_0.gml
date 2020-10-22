/// @description drop a powerup

var _xx = x;
var _yy = y;

//drops a powerup
if(irandom_range(0,5) == 0){
	instance_create_layer(x,y, "instances",obj_powerup);
}

//add score when destroyed
score += 10;

//big to smaller asteroids
if(sprite_index == spr_asteroid_huge){
	global.camerashake = 4;
	with(obj_particles) part_particles_create(partsys, _xx, _yy, parttypeasteroiddebris, 12);
	
	repeat(2){
				var new_asteroid = instance_create_layer(x,y,"Instances",obj_ateroid);
				new_asteroid.sprite_index = spr_asteroid_medium;
	}
} else if(sprite_index == spr_asteroid_medium){
	global.camerashake = 2;
		with(obj_particles) part_particles_create(partsys, _xx, _yy, parttypeasteroiddebris, 8);
	
	repeat(2){
				var new_asteroid = instance_create_layer(x,y,"Instances",obj_ateroid);
				new_asteroid.sprite_index = spr_asteroid_small;
	}
} else {
	//camera shake for smallest asteroid
	global.camerashake = 1;
	with(obj_particles) part_particles_create(partsys, _xx, _yy, parttypeasteroiddebris, 4);
}
		
