if (input == "") {
	draw_set_font(fnt_courier_30);
	draw_set_color(c_gray);
	draw_text(165, 480, "Type here...");
}
else {
	draw_set_font(fnt_courier_30);
	draw_set_color(c_black);
	draw_text(165, 480, input);
}