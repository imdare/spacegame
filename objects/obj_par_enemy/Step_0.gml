exhaustcounter++;
var len = sprite_height*.3;
var	_xx = x - lengthdir_x(len,image_angle);
var	_yy = y - lengthdir_y(len,image_angle);

if(exhaustcounter >= 4){
	exhaustcounter = 0;
with(obj_particles){
part_particles_create(partsys,_xx,_yy, parttypeenemyexhaust, 1);
	}
}