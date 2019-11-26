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
	
	if (keyboard_check_pressed(ord("O")) && ds_list_find_index(global.completed, self) == -1 && global.current == -1) {
		o_pressed = true;
		global.current = string(obj_elderly06);
		var viewWidth = camera_get_view_x(view_camera[0]) - 100;
		var viewHeight = view_hport[0] + camera_get_view_y(view_camera[0]);
		var x1 = (800 / 3) + viewWidth;
		var y1 = (y - viewHeight / 2) + 525;

		for (var i = 0; i < 3; i++) {
			instance_create_layer(x1, y1, "Alert", obj_choicebox);
			x1 += 100 + 150;
		}
	}
}
else {
	if (startCreated != -1){
		instance_destroy(startCreated);
		o_pressed = false;
		image_angle = 0;
		startCreated = -1;
		global.current = -1;
		with(obj_choicebox) {
			instance_destroy();
		}
	}
}

if (global.current == (string(obj_elderly06) + "DONE")) {
	with(obj_choicebox) {
		instance_destroy();
	}
	startSpeech = "Thank you for helping me decide!";
	global.money += 30;
	ds_list_add(global.completed, self);
	global.current = -1;
	instance_destroy(startCreated);
	o_pressed = false;
	image_angle = 0;
	startCreated = -1;
}