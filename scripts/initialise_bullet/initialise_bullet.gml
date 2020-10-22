/// @description initialise bullet
/// @arg direction
/// @arg speed
/// @arg faction
/// @arg bullet_instance
/// @arg creator


function initialise_bullet(_dir,_spd,_fac,inst,_creator){
	

	with(inst){
	direction = _dir;
	if(object_index == obj_bullet) speed = _spd;
	faction = _fac;
	creator = _creator;

//color of bullet
if(faction == factions.ally) image_blend = c_aqua;
else if(faction == factions.enemy) image_blend = c_red;
}

}