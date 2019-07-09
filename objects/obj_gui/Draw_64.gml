draw_set_color(c_black);
draw_set_font(fnt_arial);

// money
draw_text(700, 10, string("$" + string(global.money)));

// inventory
if (room == rm_game) {
	draw_rectangle(0, 550, 50, 600, true)
	draw_rectangle(50, 550, 100, 600, true)
	draw_rectangle(100, 550, 150, 600, true)
	draw_rectangle(150, 550, 200, 600, true)

	var setX = 0 + 25;
	var setY = 550 + 25;
	for (var i = 0; i < min(ds_list_size(global.inventory), 4); i++) {
		draw_sprite(ds_list_find_value(global.inventory, i), -1, setX, setY);
		setX += 50;
	}
}