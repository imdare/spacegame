partsys = part_system_create();

//Exhaust
parttypeexhaust = part_type_create();
part_type_sprite(parttypeexhaust,spr_exhaust, false, false, false);
part_type_size(parttypeexhaust, .1, .4, 0.05, 0);
part_type_color3(parttypeexhaust, c_white, c_ltgray,c_blue);
part_type_alpha3(parttypeexhaust, 1,1,0);
part_type_life(parttypeexhaust, 30,50);
part_type_direction(parttypeexhaust,0,1,0,false);
part_type_speed(parttypeexhaust,0,0,0,false);
part_type_orientation(parttypeexhaust,0,0,0,false,0);

parttypeenemyexhaust = part_type_create();
part_type_sprite(parttypeenemyexhaust,spr_exhaust, false, false, false);
part_type_size(parttypeenemyexhaust, .1, .4, 0.05, 0);
part_type_color3(parttypeenemyexhaust, c_white, c_yellow,c_red);
part_type_alpha3(parttypeenemyexhaust, 1,1,0);
part_type_life(parttypeenemyexhaust, 30,50);
part_type_direction(parttypeenemyexhaust,0,1,0,false);
part_type_speed(parttypeenemyexhaust,0,0,0,false);
part_type_orientation(parttypeenemyexhaust,0,0,0,false,0);

//Debris
parttypeasteroiddebris = part_type_create();
part_type_sprite(parttypeasteroiddebris, spr_asteroid_debris_strip4, false, false, true);
part_type_size(parttypeasteroiddebris,.5,1,0,0);
part_type_life(parttypeasteroiddebris,60,120);
part_type_alpha3(parttypeasteroiddebris,.8,.8,0);
part_type_direction(parttypeasteroiddebris,0,359,0,false);
part_type_speed(parttypeasteroiddebris,1.8,2.2,-0.05,0);
part_type_orientation(parttypeasteroiddebris,0,359,1,false,false);


parttypeshipdebris = part_type_create();
part_type_sprite(parttypeshipdebris, spr_ship_debris_strip5, false, false, true);
part_type_size(parttypeshipdebris,.5,1,0,0);
part_type_life(parttypeshipdebris,60,120);
part_type_alpha3(parttypeshipdebris,.6,.6,0);
part_type_direction(parttypeshipdebris,0,359,0,false);
part_type_speed(parttypeshipdebris,3,4,-0.05,0);
part_type_orientation(parttypeshipdebris,0,359,1,false,false);
