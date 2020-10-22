//inherited parent event
event_inherited()

//random asteroid spawn size
sprite_index = choose(
spr_asteroid_huge, 
spr_asteroid_medium, 
spr_asteroid_small, 
);

//random pawn direction
direction = irandom_range(0,359);
image_angle = irandom_range(0,359);

speed = 1;