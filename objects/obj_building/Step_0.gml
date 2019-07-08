if (place_meeting(x - 2, y, obj_player) || place_meeting(x + 2, y, obj_player) || place_meeting(x, y - 2, obj_player) || place_meeting(x, y + 2, obj_player)) {
	if (keyboard_check_pressed(ord("O"))) {
		show_debug_message("ACTION TAKEN");	
	}
}
