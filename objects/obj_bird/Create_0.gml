started = false;
freeze = false;
tube_speed = 0;
tubes = ds_list_create();

if (!global.flappybird_ins_seen) {
	var inst = instance_create_layer(400, 300, "Alert", obj_alert);
	with (inst) {
		sprite_index = spr_notice;
		text = "Press [SPACE] to jump!";
	}
	global.flappybird_ins_seen = true;
}