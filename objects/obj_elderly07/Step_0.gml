if (place_meeting(x - 2, y, obj_player) || place_meeting(x + 2, y, obj_player) || place_meeting(x, y - 2, obj_player) || place_meeting(x, y + 2, obj_player)) {
	// startConversation
	if (ds_list_find_index(global.inventory, spr_fishingrod_1) == -1 && ds_list_find_index(global.inventory, spr_fishingrod_2) == -1 && ds_list_find_index(global.inventory, spr_fishingrod_3) == -1) {
		text = startSpeech + "Purchase a fishing rod first!";
	}
	else {
		text = startSpeech + "Press [O] to fish.";
	}
	if (startCreated == -1) {
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
	image_angle = (1 + bool(sign(xSign) == -1) * (abs(xSign) > abs(ySign)) + bool(sign(ySign) != -1) * (abs(ySign) > abs(xSign))) * 180 - (90 * (abs(xSign) > abs(ySign)))
	
	 if (keyboard_check_pressed(ord("O")) && (ds_list_find_index(global.inventory, spr_fishingrod_1) != -1 || ds_list_find_index(global.inventory, spr_fishingrod_2) != -1 || ds_list_find_index(global.inventory, spr_fishingrod_3) != -1)) {
		if (ds_list_find_index(global.inventory, spr_fishingrod_1) != -1) {
			ds_list_delete(global.inventory, ds_list_find_index(global.inventory, spr_fishingrod_1));
			ds_list_add(global.inventory, spr_fishingrod_2);
		}
		else if (ds_list_find_index(global.inventory, spr_fishingrod_2) != -1) {
			ds_list_delete(global.inventory, ds_list_find_index(global.inventory, spr_fishingrod_2));
			ds_list_add(global.inventory, spr_fishingrod_3);
		}
		else if (ds_list_find_index(global.inventory, spr_fishingrod_3) != -1) {
			ds_list_delete(global.inventory, ds_list_find_index(global.inventory, spr_fishingrod_3));
		}
		
		if (ds_list_find_index(global.completed, self) == -1) {
			ds_list_add(global.completed, self)
		}
		room_goto(rm_fishing);
	}
}
else {
	if (startCreated != -1){
		instance_destroy(startCreated);
		image_angle = 0;
		startCreated = -1;
	}
}