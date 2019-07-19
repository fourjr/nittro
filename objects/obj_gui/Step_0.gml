// debug
if (keyboard_check(ord("M"))) {
	global.money += 1;
}
if (keyboard_check(ord("N")) && global.money > 0) {
	global.money -= 1;
}
if (keyboard_check_pressed(vk_escape)) {
	room_goto(rm_game);
}
if (keyboard_check_pressed(ord("R"))) {
	room_goto(rm_menu);
}