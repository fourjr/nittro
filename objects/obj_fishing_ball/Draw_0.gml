draw_self();

draw_set_color(c_white);
draw_line_width(x, 0, x, y, 3)

var xPos = 20;
for (var i = 0; i < life; i++) {
	draw_sprite_ext(spr_fishing_ball, -1, xPos, 20, 1, 1, 45, c_white, 1)
	xPos += 50 + 10;
}