/// @description Insert description here
// You can write your code in this editor
var aim_cursor = image_angle;
	aim_cursor = point_direction(x,y, mouse_x, mouse_y);
	aim_cursor = image_angle - angle_difference(image_angle,aim_cursor);
	image_angle = lerp(image_angle,aim_cursor, 0.1);
	
draw_text(20, 60, "image_angle"+string(image_angle));
draw_text(20, 80, "tilt"+string(image_angle-aim_cursor));
draw_text(20, 100, "direction"+string(direction));