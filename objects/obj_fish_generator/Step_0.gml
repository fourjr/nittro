if (!game_started && !instance_exists(obj_alert)) {
	alarm[0] = 1;
	alarm[1] = 2 * room_speed;
	game_started = true;
	obj_fishing_ball.active = true;
}