if (visible && !instance_exists(obj_alert)) {
	if (room == rm_menu && obj_name.input != "") {
		room_goto(rm_instructions);
	}
	else if (room == rm_instructions) {
		room_goto(rm_game_setup);
	}
	else if (room == rm_book) {
		global.page++;
	}
	else if (room == rm_fishingend) {
		room_goto(rm_game);
	}
	else if (room == rm_endgame) {
		game_restart();
	}
}