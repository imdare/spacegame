//length of laser
var len = 800;

//draw line
draw_line_width(x,y, 
x+lengthdir_x(len, direction), 
y+lengthdir_y(len, direction),
2,
);

//draw collision
var inst = collision_line(x,y, 
	x+lengthdir_x(len, direction), 
	y+lengthdir_y(len, direction),
	obj_faction, false, false
	);
	
//laser checks faction
if(inst != noone){
	if(inst.faction != faction){
		with(inst){
			event_perform(ev_other,ev_user1);
		}
	}
}