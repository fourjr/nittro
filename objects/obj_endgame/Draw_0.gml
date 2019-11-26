draw_set_font(fnt_agencyfb);
if (ds_list_size(global.completed) >= 5) {
	draw_set_color(c_black);
}
else {
	draw_set_color(c_white);
}
draw_text(630, 550, string(ds_list_size(global.completed)));