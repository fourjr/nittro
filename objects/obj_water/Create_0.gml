var spr = "spr_water";

if (place_meeting(x - sprite_width / 2, y, obj_water)) {
	spr += "_left";
}

if (place_meeting(x + sprite_width / 2, y, obj_water)) {
	spr += "_right";
}

if (place_meeting(x, y + sprite_height / 2, obj_water)) {
	spr += "_bottom";
}

if (place_meeting(x, y - sprite_height / 2, obj_water)) {
	spr += "_top";
}

sprite_index = asset_get_index(spr);