draw_set_font(fnt_courier_30);

// money
if (room == rm_flappybird) {
	// flappy bird points
	draw_text(20, 20, string(ds_list_size(obj_bird.tubes)));
}
draw_set_color(c_black);
draw_text(700, 20, string("$" + string(global.money)));

// inventory
if (room == rm_game) {
	draw_rectangle(0, 549, 50, 600, true);
	draw_rectangle(50, 549, 100, 600, true);
	draw_rectangle(100, 549, 150, 600, true);
	draw_rectangle(150, 549, 200, 600, true);

	var setX = 0 + 25;
	var setY = 550 + 25;
	for (var i = 0; i < min(ds_list_size(global.inventory), 4); i++) {
		draw_sprite(ds_list_find_value(global.inventory, i), -1, setX, setY);
		setX += 50;
	}
}