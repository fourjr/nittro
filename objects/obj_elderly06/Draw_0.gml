draw_self();

if (o_pressed && ds_list_find_index(global.completed, self) == -1) {
	for (var i = 0; i < 3; i++) {
		var width = 145;
		var height = 100;
		var viewWidth = view_wport[0] + camera_get_view_x(view_camera[0]);
		var viewHeight = view_hport[0] + camera_get_view_y(view_camera[0]);
 
				  // leftmost         +   split canvas into 3      remove width
		var x1 = (x - viewWidth / 2) + (((viewWidth * (i + 1)/3) - width)) /*/ 2*/ - (((viewWidth / 3) - width) / 2);
		show_debug_message(((viewWidth / 3) - width) / 2)
		// var partinfront = viewWidth * (i/3)
		// var thinginfront = (x - viewWidth / 2) + (((viewWidth / 3) - width)) / 2
		var x2 = x1 + width;
		var y1 = (y - viewHeight / 2) + 450;
		var y2 = y1 + height;
		show_debug_message("x: " + string(x));
		show_debug_message("y: " + string(y));
		show_debug_message("x1: " + string(x1) + "-" + string(i));
		show_debug_message("y1: " + string(y1) + "-" + string(i));
		show_debug_message("x2: " + string(x2) + "-" + string(i));
		show_debug_message("y2: " + string(y2) + "-" + string(i));
		//show_debug_message("y1: " + string(y1));
		//show_debug_message(x2);
		//	show_debug_message(y2);
		draw_set_colour(c_yellow);
		draw_roundrect(x1, y1, x2, y2, false);
		draw_set_colour(c_black);
		draw_roundrect(x1 - 1, y1 - 1, x2 + 1, y2 + 1, true); // outline
	}
}