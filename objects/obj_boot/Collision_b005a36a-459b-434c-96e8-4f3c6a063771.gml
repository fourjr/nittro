if (obj_fishing_ball.sprite_index == spr_fishing_ball) {
	obj_fishing_ball.toY = 145;
	obj_fishing_ball.signY = sign(y - obj_fishing_ball.toY);
	obj_fishing_ball.sprite_index = spr_fishing_ball_boot;
	instance_destroy();
}