x -= obj_bird.tube_speed;

if (x < -sprite_width) {
	// kill instance if its far away from bird
	instance_destroy();
}