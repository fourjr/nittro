global.inventory = ds_list_create();
global.completed = ds_list_create()
global.money = 0;
global.current = -1;
randomise();

file_data = "[{\"name\": \"Walking Stick\", \"key\": \"spr_walking_stick\", \"description\": \"Need a support?\", \"price\": 40}, {\"name\": \"Medicine\", \"key\": \"spr_medicine\", \"description\": \"Instant heal! The\nmost sought after\nproduct in the\nmarket.\", \"price\": 45}, {\"name\": \"Fishing Rod\", \"key\": \"spr_fishingrod_1\", \"description\": \"Satisfy your\ncravings for fish!\n3 uses only.\", \"price\": 50}]"
global.shop_items = ds_map_find_value(json_decode(file_data), "default");

room_goto(rm_game);
