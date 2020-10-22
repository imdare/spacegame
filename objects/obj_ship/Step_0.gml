/// @description player controls




//ship aims at mouse 
var aim_cursor = image_angle;
	aim_cursor = point_direction(x,y, mouse_x, mouse_y);
	aim_cursor = image_angle - angle_difference(image_angle,aim_cursor);
	image_angle = lerp(image_angle,aim_cursor, 0.1);
	
//tilt ship when turning
var tilt = (image_angle-aim_cursor);

if tilt <= -5{
    if tilt >= -20{
    image_index = 5;}}    
if tilt <= -20{
    image_index = 6;}
if tilt >= 5{
    if tilt <= 20{
    image_index = 1;}}
if tilt >= 20{
    image_index = 2;}
if tilt >= -5{
    if tilt <= 5{
        image_index = 0;}}

//move forward
if(keyboard_check(ord("W"))){
	motion_add(image_angle, 0.1);
	if speed > 10 speed = 10;
	
	//particle FX
exhaustcounter++;
var len = sprite_height*.3;
var	_xx = x - lengthdir_x(len,image_angle);
var	_yy = y - lengthdir_y(len,image_angle);
	if(exhaustcounter >=4){
		exhaustcounter = 0;
	with(obj_particles){
	part_particles_create(partsys,_xx,_yy, parttypeexhaust, 1);
		}
	}
}

//move backwards
if(keyboard_check(ord("S"))){
	motion_add(image_angle, -0.05); 
} 

//strafe left
if(keyboard_check(ord("A"))){
	motion_add(image_angle+90, 0.01);
}
//strafe right
if(keyboard_check(ord("D"))){
	motion_add(image_angle-90, 0.01);
} 



//bullet spreading
bulletspreadcounter++;
if bulletspreadcounter = 1{	
	bulletspread = irandom(9);
	bulletspreadcounter = 0;
	}

// Shoot bullet
bulletcounter++;
if(mouse_check_button(mb_left) && (bulletcounter >= bulletinterval)) {
	bulletcounter = 0;
	create_bullet((image_angle -5 + bulletspread),bulletSpd,faction,_id,guns);   
}

move_wrap(true,true,sprite_width/2);