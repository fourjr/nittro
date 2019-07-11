var nearestInst = instance_nearest(room_width, room_height, obj_tube);
var objY;
var objX = nearestInst.x + sprite_get_width(spr_tube) / 2 + modifier;

while (true) {
	objY = irandom_range(-300, 0);
	instance_create_layer(objX, objY, "Tubes", obj_tube);

	objY = irandom_range(600, 900);
	instance_create_layer(objX, objY, "Tubes", obj_tube);

	modifier = irandom_range(150, 200);
	objX += sprite_get_width(spr_tube) + modifier;

	if (objX > room_width + sprite_get_width(spr_tube)) {
		break;
	}
}

alarm[0] = (objX - (room_width + sprite_get_width(spr_tube)))/obj_bird.tube_speed;