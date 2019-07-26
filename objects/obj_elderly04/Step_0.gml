if (place_meeting(x - 2, y, obj_player) || place_meeting(x + 2, y, obj_player) || place_meeting(x, y - 2, obj_player) || place_meeting(x, y + 2, obj_player)) {
	// startConversation
	if (startCreated == -1) {
		startCreated = instance_create_layer(0, 0, "Conversation", obj_conversation);
		with (startCreated) {
			x = other.x;
			y = other.y;
			spr_width = other.sprite_width;
			spr_height = other.sprite_height;
			text = other.startSpeech;
		}
	}
		
	// image angle part
	xSign = obj_player.x - x;
	ySign = obj_player.y - y
	image_angle = (1 + bool(sign(xSign) == -1) * (abs(xSign) > abs(ySign)) + bool(sign(ySign) != -1) * (abs(ySign) > abs(xSign))) * 180 - (90 * (abs(xSign) > abs(ySign)))

	if (keyboard_check_pressed(ord("O"))) {
		room_goto(rm_flappybird);
	}
}
else {
	if (startCreated != -1){
		instance_destroy(startCreated);
		startCreated = -1;
	}
}