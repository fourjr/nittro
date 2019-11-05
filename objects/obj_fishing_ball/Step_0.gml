if (!active) exit;

if (timer > 0) {
	timer -= 1;
}
else {
	room_goto(rm_fishingend);
	active = false;
}

if (mouse_check_button_released(mb_left) && toY == -1) {
	toY = mouse_y;
	signY = sign(y - toY);
}

if (toY == -1) {
	signX = sign(x - mouse_x);
	x -= signX * spd * 3;
	if (sign(x - mouse_x) != signX) {
		x = mouse_x;
		signX = 0;
	}
}

if (toY != -1) {
	y -= signY * spd;
	if (sign(y - toY) != signY) {
		y = toY
		toY = -1;
		signY = 0;
		
		if (sprite_index == spr_fishing_ball_boot) {
			life -= 1
			sprite_index = spr_fishing_ball;
			if (life < 0) {
				room_goto(rm_fishingend);
				active = false;
			}
		}
		else if (sprite_index == spr_fishing_ball_big) {
			obj_fish_generator.fishes_caught++;
			if (obj_fish_generator.fishes_caught % 5 == 0) {
				obj_fish_generator.spd += 0.5;
			}
			var inst = instance_create_layer(obj_fish_rod_back.x + 50, irandom_range(140, 160), "FishStatic", obj_fish_static);
			inst.sprite_index = spr_fish_big;
			sprite_index = spr_fishing_ball;
			points += 5;
			global.money += 5;
		}
		else if (sprite_index != spr_fishing_ball) {
			obj_fish_generator.fishes_caught++;
			if (obj_fish_generator.fishes_caught % 5 == 0) {
				obj_fish_generator.spd += 0.5;
			}
			var inst = instance_create_layer(obj_fish_rod_back.x + 50, irandom_range(140, 160), "FishStatic", obj_fish_static);
			inst.sprite_index = asset_get_index("spr_fish_0" + string_char_at(sprite_get_name(sprite_index), 19));
			sprite_index = spr_fishing_ball;
			points += 1;
			global.money += 1;
			
			if (points == 10) {
				obj_fish_generator.alarm[2] = 1;
			}
		}
	}
}