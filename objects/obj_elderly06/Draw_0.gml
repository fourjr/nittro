draw_self();

if (o_pressed && ds_list_find_index(global.completed, self) == -1) {
	var viewWidth = camera_get_view_x(view_camera[0]) - 160;
	var viewHeight = view_hport[0] + camera_get_view_y(view_camera[0]);
	var x1 = (800 / 3) + viewWidth;
	var y1 = (y - viewHeight / 2) + 500;

	for (var i = 0; i < 3; i++) {
		var x1 = (i + 1) * (800 / 3) + viewWidth;
		depth = -2000;
		draw_set_font(fnt_courier);
		draw_text(x1 + 10, y1 + 10, choices[i]);
		x1 += 100 + 180;
	}
}