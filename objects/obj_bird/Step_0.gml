layer_hspeed(layer_get_id("Background"), -tube_speed);
layer_hspeed(layer_get_id("Overlay"), -tube_speed);

if (!started && instance_exists(obj_alert)) exit;

if (!freeze) {
	if (!(place_empty(x, y) && (x - (sprite_width / 2)) >= 0 && (x + (sprite_width / 2)) <= room_width && (y + (sprite_height / 2)) <= (room_height - sprite_get_height(spr_overlay))) || (place_meeting(x, -10, obj_tube) && sign(y) == -1)) {
		// when the bird hits something
		freeze = true;
		gravity = 10;
		speed = 0;
		tube_speed = 0;
		obj_tube_gen.alarm[0] = 0;
		image_angle = 90;
	}
	else if (keyboard_check_pressed(vk_space)) {
		if (!started) {
			if (global.name == "Randall") {
				tube_speed = 50;
			}
			else if (global.name == "Nabeel") {
				tube_speed = 0.4;
			}
			else {
				tube_speed = 5;
			}
			obj_tube_gen.alarm[0] = 1;
			started = true;
		}
		image_angle = 20;
		gravity = -8; 
		alarm[0] = 2;
		tube_speed += 0.01;
	}

	var nearestInst = instance_nearest(x, -10, obj_tube);
	// BIRD AT X50
	if (nearestInst != noone && place_meeting(x + 10, -10, obj_tube) && ds_list_find_index(tubes, nearestInst) == -1) {
		ds_list_add(tubes, nearestInst);
		global.money += 1;
	}
}
else if (keyboard_check_pressed(vk_space)) {
	room_goto(rm_flappybird);
}