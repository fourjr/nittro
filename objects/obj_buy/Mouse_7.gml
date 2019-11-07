if (visible && !instance_exists(obj_alert)) {
	var data = ds_list_find_value(global.shop_items, global.page);
	var price = ds_map_find_value(data, "price")
	if (global.money >= price) {
		if (is_string(ds_map_find_value(data, "key"))) {
			if (ds_list_find_index(global.inventory, asset_get_index(ds_map_find_value(data, "key"))) == -1) {
				global.money -= price;
				ds_list_add(global.inventory, asset_get_index(ds_map_find_value(data, "key")));
				room_goto(rm_game);
			}
			else {
				var inst = instance_create_layer(400, 300, "Alert", obj_alert);
				with (inst) {
					sprite_index = spr_alert;
					text = "You can only buy one of each item.";
				}
			}
		}
		else {
			global.money -= price;
			room_goto(rm_endgame);
		}
	}
}
