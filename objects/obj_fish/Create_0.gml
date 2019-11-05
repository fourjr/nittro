xspd = obj_fish_generator.spd;

if (irandom(1)) {
	image_xscale *= -1;
	xspd *= -1;
	x = 950;
}
else {
	x = -150;
}
sprite_index = asset_get_index("spr_fish_0" + string(irandom_range(1, 2)));
