if (visible) {
	var data = ds_list_find_value(global.shop_items, global.page);
	var price = ds_map_find_value(data, "price")
	if (global.money >= price) {
		global.money -= price;
		ds_list_add(global.inventory, asset_get_index(ds_map_find_value(data, "key")));
		room_goto(rm_game);
	}
}
