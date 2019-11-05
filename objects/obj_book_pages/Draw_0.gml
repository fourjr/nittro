draw_set_color(c_black);
draw_set_font(fnt_arial_bold);

global.page = min(max(global.page, 0), ds_list_size(global.shop_items) + 1);

if (global.page == ds_list_size(global.shop_items)) {
	room_goto(rm_game);
}
else {
	// shop item
	var data = ds_list_find_value(global.shop_items, global.page);
	draw_set_font(fnt_arial_bold);
	draw_text(30, 30, ds_map_find_value(data, "name"));
	draw_set_font(fnt_arial)
	draw_text(30, 70, ds_map_find_value(data, "description"));
	var newY = 70 + 60 * (string_count("\n", ds_map_find_value(data, "description")) + 1);
	draw_text(30, newY, "Cost: $" + string(ds_map_find_value(data, "price")));
}