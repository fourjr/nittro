if ((place_meeting(x - 2, y, obj_player) || place_meeting(x + 2, y, obj_player) || place_meeting(x, y - 2, obj_player) || place_meeting(x, y + 2, obj_player)) && (obj_elderly08.active || ds_list_find_index(global.completed, obj_elderly08) != -1)) {
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
	if (keyboard_check_pressed(ord("O")) && ds_list_find_index(global.completed, obj_elderly08) == -1) {
		message = "You have rescued Monwa!";
		global.money += 30;
		ds_list_add(global.completed, obj_elderly08);
		instance_destroy(startCreated);
		startCreated = -1;
		obj_elderly08.visible = false;
		obj_elderly08.active = false;
		obj_elderly08.x = -100;
	}
}
else {
	if (startCreated != -1){
		instance_destroy(startCreated);
		startCreated = -1;
	}
}
