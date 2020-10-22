/// @description create bullet
/// @arg direction
/// @arg speed
/// @arg faction
/// @arg creator
/// @arg gun_type*

function create_bullet(_dir,_spd,_fac,_id,_gun_type){     //variables are not declared speratly but in the function call itself
	_dir = argument0;
	_spd = argument1;
	_fac = argument2;
	_id = argument3;
//	_gun_type = -1; 
	if (argument_count > 4) _gun_type = argument4;
	

//	audio_play_sound(snd_laser_canon, 1, false);  	//play audio

//choose gun type
	 switch(_gun_type){
		//	audio_play_sound(snd_laser_canon, 1, false);
		case powerups.three_bullets:
			var inst = instance_create_layer(x,y, "Instances", obj_bullet);
			initialise_bullet(_dir,_spd,_fac,inst,_id);
			
		case powerups.two_bullets:

			var _sep = 12;
		
			var inst = instance_create_layer(x+lengthdir_x(_sep,_dir+90),y+lengthdir_y(_sep,_dir+90), "Instances", obj_bullet);
			initialise_bullet(_dir,_spd,_fac,inst,_id);
			
			
			var inst = instance_create_layer(x+lengthdir_x(_sep,_dir-90),y+lengthdir_y(_sep,_dir-90), "Instances", obj_bullet);
			initialise_bullet(_dir,_spd,_fac,inst,_id);
			break;
			
		case powerups.four_bullets:
		//	audio_play_sound(snd_laser_canon, 1, false);
			var _sep = 7; 
			var bullet_angle;
			var i = 0;
			repeat(4){
				bullet_angle = _dir + (i + 90);
				var inst = instance_create_layer(
				x+lengthdir_x(_sep,bullet_angle),
				y+lengthdir_y(_sep,bullet_angle), 
				"Instances", obj_bullet
				);
				initialise_bullet(_dir,_spd,_fac,inst,_id);
				i++;
			}
			break;
			
		case powerups.star_bullets:
				//	audio_play_sound(snd_laser_canon, 1, false);
			var _sep = 7; 
			var bullet_angle;
			var i = 0;
			repeat(8){
				bullet_angle = _dir + (i + 45);
				var inst = instance_create_layer(
				x+lengthdir_x(_sep,bullet_angle),
				y+lengthdir_y(_sep,bullet_angle), 
				"Instances", obj_bullet
				);
				initialise_bullet(_dir,_spd,_fac,inst,_id);
				i++;
			}
			break;
			
		case powerups.laser_bullets:
		//	audio_play_sound(snd_laser_canon, 1, false);  	//play audio
			var inst = instance_create_layer(x,y, "Instances", obj_laser);
			initialise_bullet(_dir,_spd,_fac,inst,_id);
			break;
			
		default:
		//	audio_play_sound(snd_laser_canon, 1, false);  	//play audio
			var inst = instance_create_layer(x,y, "Instances", obj_bullet);
					initialise_bullet(_dir,_spd,_fac,inst,_id);
			

			break;
	 }


}