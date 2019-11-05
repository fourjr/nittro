if (obj_fishing_ball.sprite_index == spr_fishing_ball) {
	obj_fishing_ball.toY = 145;
	obj_fishing_ball.signY = sign(y - obj_fishing_ball.toY);
	obj_fishing_ball.sprite_index = asset_get_index("spr_fishing_ball_0" + string_char_at(sprite_get_name(sprite_index), 11));
	instance_destroy();
}