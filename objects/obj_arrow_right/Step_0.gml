visible = room != rm_book || global.page < ds_list_size(global.shop_items);
if (room == rm_book && sprite_index != spr_right_arrow) {
	sprite_index = spr_right_arrow;
}