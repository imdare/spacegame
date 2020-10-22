score = 0;
lives = 3;
draw_set_font(fnt_text);

randomize();

//factions
enum factions {
	neutral,
	ally,
	enemy
}

enum powerups {
	two_bullets,
	three_bullets,
	four_bullets,
	star_bullets, 
	laser_bullets,
	invincible
}