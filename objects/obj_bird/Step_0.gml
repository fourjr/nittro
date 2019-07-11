if (!freeze) {
	if (!(place_empty(x, y) && (x - (sprite_width / 2)) >= 0 && (x + (sprite_width / 2)) <= room_width && (place_empty(x, y) && (y - (sprite_height / 2)) >= 0 && (y + (sprite_height / 2)) <= room_height))) {
		// when the bird hits something
		freeze = true;
		gravity = 0;
		speed = 0;
		tube_speed = 0;
		obj_tube_gen.alarm[0] = 0;
	}
	else if (keyboard_check_pressed(vk_space)) {
		if (!started) {
			if (global.name == "Randall") {
				tube_speed = 100;
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
		gravity = -15; 
		alarm[0] = 1.8;
	}
	
	var nearestInst = instance_nearest(x, -10, obj_tube);
	if (nearestInst != noone && 40 < nearestInst.x && nearestInst.x < 60 && ds_list_find_index(tubes, nearestInst) == -1) {
		ds_list_add(tubes, nearestInst);
	}
}