if (visible) {
	if (room == rm_menu) {
		room_goto(rm_game_setup);
	} else {
		global.page++;
	}
}