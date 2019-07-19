global.inventory = ds_list_create();
global.completed = ds_list_create()
global.money = 0;

file_data = "[{\"name\": \"Walking Stick\", \"key\": \"spr_walking_stick\", \"description\": \"Need a support?\", \"price\": 20}, {\"name\": \"Medicine\", \"key\": \"spr_medicine\", \"description\": \"Instant heal! The\nmost sought after\nproduct in the\nmarket.\", \"price\": 30}]"
global.shop_items = ds_map_find_value(json_decode(file_data), "default");

room_goto(rm_game);
