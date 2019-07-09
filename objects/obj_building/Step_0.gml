if (place_meeting(x - 2, y, obj_player) || place_meeting(x + 2, y, obj_player) || place_meeting(x, y - 2, obj_player) || place_meeting(x, y + 2, obj_player)) {
	// startConversation
	if (startCreated == -1) {
		startCreated = instance_create_layer(0, 0, "Conversation", obj_conversation);
		with (startCreated) {
			x = other.x;
			y = other.y;
			spr_width = other.sprite_width;
			spr_height = other.sprite_height;
			text = other.message;
			image_angle = other.image_angle;
		}
	}
	if (keyboard_check_pressed(ord("O"))) {
		room_goto(location);
	}
}
else {
	if (startCreated != -1){
		instance_destroy(startCreated);
		startCreated = -1;
	}
}
