started = false;
freeze = false;
tube_speed = 0;
tubes = ds_list_create();

var inst = instance_create_layer(400, 300, "Alert", obj_alert);
with (inst) {
	sprite_index = spr_notice;
	text = "Press [SPACE] to jump!";
}