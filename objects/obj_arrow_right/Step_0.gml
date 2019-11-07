visible = room != rm_book || global.page < ds_list_size(global.shop_items);
if ((room == rm_book || room == rm_fishingend || room == rm_endgame) && sprite_index != spr_right_arrow) {
	sprite_index = spr_right_arrow;
}