if (keyboard_check(ord("W"))) {
	sprite_index = spr_player_walking;
	image_angle = 0;
	move("y", -spd);
}
else if (keyboard_check(ord("A"))) {
	sprite_index = spr_player_walking;
	image_angle = 90;
	move("x", -spd);
}
else if (keyboard_check(ord("S"))) {
	sprite_index = spr_player_walking;
	image_angle = 180
	move("y", spd);
}
else if (keyboard_check(ord("D"))) {
	sprite_index = spr_player_walking;
	image_angle = 270;
	move("x", spd);
}
else {
	sprite_index = spr_player;
}