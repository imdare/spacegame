direction = irandom_range(0,359);
speed = 0.5;
image_angle = irandom_range(0,359);
rotate_l_r = choose(0,1);

if rotate_l_r == 1{image_angle = image_angle + (1);
}
if rotate_l_r == 0{image_angle = image_angle + (-1);
}
