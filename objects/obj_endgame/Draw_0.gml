draw_set_font(fnt_arial);
draw_set_color(c_white);
draw_text(200, 500, "Total elderly helped: " + string(ds_list_size(global.completed)));