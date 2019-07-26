if (keyboard_key == vk_enter && input != "") {
	if (string_count("safe", input) >= 1) {
		ds_list_add(global.completed, obj_elderly03);
		global.money += 10;
		room_goto(rm_game);
	}
}
else if (keyboard_key == vk_backspace) {
	input = string_delete(input, string_length(input), 1);
}
else if ((65 <= keyboard_key && 90 >= keyboard_key || keyboard_key == 32) && string_length(input) < 20) {
	// only accept a-z or space
	if (string_length(input) == 0 || string_char_at(input, string_length(input)) == " " || chr(keyboard_key) == 32) {
		input += chr(keyboard_key);
	}
	else {
		input += string_lower(chr(keyboard_key));
	}
}