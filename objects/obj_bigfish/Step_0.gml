if (obj_fishing_ball.active) {
	x += xspd;
}

if (x < 0 && image_xscale < 0) {
	instance_destroy();
}

if (x > room_width && image_xscale > 0) {
	instance_destroy();
}