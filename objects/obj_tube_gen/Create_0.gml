var objY;
var objX = 400 + sprite_get_width(spr_tube) / 2;

while (objX < room_width + sprite_get_width(spr_tube)) {
	objY = irandom_range(-300, 0);
 	with(instance_create_layer(objX, objY, "Tubes", obj_tube)) {
		image_angle = 180;
	}

	objY = irandom_range(600, 900);
	instance_create_layer(objX, objY, "Tubes", obj_tube);

	modifier = irandom_range(100, 150);
	objX += sprite_get_width(spr_tube) + modifier;
}

