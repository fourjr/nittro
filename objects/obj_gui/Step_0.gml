// debug

if (keyboard_check_pressed(vk_escape) && room != rm_fishing) {
	room_goto(rm_game);
}