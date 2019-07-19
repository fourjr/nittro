if (place_meeting(x - 2, y, obj_player) || place_meeting(x + 2, y, obj_player) || place_meeting(x, y - 2, obj_player) || place_meeting(x, y + 2, obj_player)) {
	var hasItem = ds_list_find_index(global.inventory, spr_walking_stick) != -1;
	if (keyboard_check_pressed(ord("O")) && hasItem && ds_list_find_index(global.completed, self) == -1) {
		// Ensure that user press O, has the walking stick and have not already completed this
		ds_list_add(global.completed, self);
		ds_list_delete(global.inventory, ds_list_find_index(global.inventory, spr_walking_stick))
		hasItem = false;
		sprite_index = spr_elderly01_completed;
		if (startCreated != -1) {
			instance_destroy(startCreated);
			startCreated = -1;
		}
		
	}

	if (startCreated == -1) {
		if (hasItem) {
			text = "Press [O] to give the walking stick";;
		}
		else if (ds_list_find_index(global.completed, self) != -1) {
			// guy is done
			text = "Thank you so much for the walking stick!";
		}
		else {
			text = startSpeech;
		}
		startCreated = instance_create_layer(0, 0, "Conversation", obj_conversation);
		with (startCreated) {
			x = other.x;
			y = other.y;
			spr_width = other.sprite_width;
			spr_height = other.sprite_height;
			text = other.text;
		}
	}
	
	
	// image angle part
	xSign = obj_player.x - x;
	ySign = obj_player.y - y
	show_debug_message("x: " + string(xSign) + "/y: " + string(ySign));
	image_angle = (1 + bool(sign(xSign * (abs(xSign) > abs(ySign)) + ySign * (abs(ySign) > abs(xSign))) == -1)) * 180 - (90 * (abs(xSign) > abs(ySign)))
	/*if (abs(xSign) > abs(ySign)) {
		// right or left
		image_angle = (1 + bool(sign(xSign) == -1)) * 180 - 90;
	}
	else {
		// up or down
		image_angle = (1 + bool(sign(ySign) == -1)) * 180 - (90 * abs(xSign) > abs(ySign));
	}*/
}
else {
	if (startCreated != -1){
		instance_destroy(startCreated);
		startCreated = -1;
	}
}