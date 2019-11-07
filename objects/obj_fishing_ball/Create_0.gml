toY = -1;
signX = 0;
signY = 0;

spd = 8;

points = 0;
life = 3;
active = false ;

timer = 100 * room_speed;
x = mouse_x;

var inst = instance_create_layer(400, 300, "Alert", obj_alert);
with (inst) {
	sprite_index = spr_notice;
	text = "Move your mouse to the fish.\nClick to catch.\nAvoid all boots.";
}