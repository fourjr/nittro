image_angle = irandom(360);

xspd = obj_fish_generator.spd;

if (irandom(1)) {
	image_xscale *= -1;
	xspd *= -1;
	x = 950;
}
else {
	x = -150;
}