draw_self();
var x1 = x - sprite_width / 2 - 50;
var x2 = x + sprite_width / 2;
var y1 = y + sprite_height / 2 + 10;
var y2 = y1 + 55;

if (mouseIn) {
	draw_set_colour(c_white);
	draw_roundrect(x1, y1, x2, y2, false);
	draw_set_colour(c_black);
	draw_roundrect(x1 - 1, y1 - 1, x2 + 1, y2 + 1, true); // outline
	draw_set_font(fnt_courier_11); 
	draw_text(x1 + 5, y1 + 5, "Elderly\nHelped:\n" + string(ds_list_size(global.completed)));
}