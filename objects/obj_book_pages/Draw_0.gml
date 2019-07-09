draw_set_color(c_black);
draw_set_font(fnt_arial);

global.page = min(max(global.page, 0), ds_list_size(global.shop_items) + 1);

if (global.page == 0) {
	draw_text(10, 10, "TITLE");
}
else if (global.page == ds_list_size(global.shop_items) + 1) {
	draw_text(10, 10, "EOF");
}
else {
	// shop item
	var data = ds_list_find_value(global.shop_items, global.page - 1);
	draw_text(10, 10, ds_map_find_value(data, "name"));
	draw_text(10, 50, ds_map_find_value(data, "description"));
	draw_text(10, 100, "Cost: $" + string(ds_map_find_value(data, "price")));
}