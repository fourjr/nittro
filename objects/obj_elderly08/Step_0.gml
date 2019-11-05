if (!visible) exit;

// image angle part
xSign = obj_player.x - x;
ySign = obj_player.y - y
image_angle = (1 + bool(sign(xSign) == -1) * (abs(xSign) > abs(ySign)) + bool(sign(ySign) != -1) * (abs(ySign) > abs(xSign))) * 180 - (90 * (abs(xSign) > abs(ySign)))

if ((place_meeting(x - 2, y, obj_player) || place_meeting(x + 2, y, obj_player) || place_meeting(x, y - 2, obj_player) || place_meeting(x, y + 2, obj_player)) && visible) {
	// startConversation
	if (startCreated == -1) {
		sprite_index = spr_elderly08_talk;
		x = obj_player.x - obj_player.sprite_width / 2 - 5;
		y = obj_player.y + obj_player.sprite_height / 2 + 5;
		startCreated = instance_create_layer(0, 0, "Conversation", obj_conversation);
		with (startCreated) {
			x = other.x;
			y = other.y;
			spr_width = other.sprite_width;
			spr_height = other.sprite_height;
			text = other.startSpeech;
		}
	}
	
	if (keyboard_check_pressed(ord("O"))) {
		active = true;
		startSpeech = "Bring Monwa to the Family Service Center";
		instance_destroy(startCreated);
		startCreated = -1;
	}
}
else {
	if (startCreated != -1){
		instance_destroy(startCreated);
		startCreated = -1;
	}

	var triggered = false;
	if (x < (obj_player.x - obj_player.sprite_width * 1.5)) {
		triggered = true;
		moveFollow("x", +spd);
	}
	if (x > (obj_player.x + obj_player.sprite_width * 1.5)) {
		triggered = true;
		moveFollow("x", -spd);
	}
	if (y < (obj_player.y - obj_player.sprite_height * 1.5)) {
		triggered = true;
		moveFollow("y", +spd);
	}
	if (y > (obj_player.y + obj_player.sprite_height * 1.5)) {
		triggered = true;
		moveFollow("y", -spd); 
	}
	if (triggered) {
		sprite_index = spr_elderly08_walk;
	}
	else {
		sprite_index = spr_elderly08_froze;
	}
}