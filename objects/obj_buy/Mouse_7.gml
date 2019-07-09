if (visible) {
	var data = ds_list_find_value(global.shop_items, global.page - 1);
	var price = ds_map_find_value(data, "price")
	if (global.money >= price) {
		global.money -= price;
		show_debug_message(ds_map_find_value(data, "key"))
		show_debug_message(asset_get_index(ds_map_find_value(data, "key")))
		ds_list_add(global.inventory, asset_get_index(ds_map_find_value(data, "key")));
	}
}
