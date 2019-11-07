if (ds_list_size(global.completed) > 5) {
	var sprite = spr_endgame_saved;
}
else {
	var sprite = spr_endgame_dead;
}

var layer_id = layer_get_id("Background");
layer_background_change(layer_background_get_id(layer_id), sprite)