global.inventory = ds_list_create();
global.completed = ds_list_create()
global.money = 0;
global.current = -1;
global.flappybird_ins_seen = false;
randomise();

global.shop_items = ds_list_create();
var item;
item = ds_map_create();
ds_map_add(item, "name", "Walking Stick");
ds_map_add(item, "key", "spr_walking_stick");
ds_map_add(item, "description", "Need a support?");
ds_map_add(item, "price", 40);
ds_list_add(global.shop_items, item);

item = ds_map_create();
ds_map_add(item, "name", "Medicine");
ds_map_add(item, "key", "spr_medicine");
ds_map_add(item, "description", "Instant heal! The\nmost sought after\nproduct in the\nmarket.");
ds_map_add(item, "price", 45);
ds_list_add(global.shop_items, item);

item = ds_map_create();
ds_map_add(item, "name", "Fishing Rod");
ds_map_add(item, "key", "spr_fishingrod_1");
ds_map_add(item, "description", "Satisfy your\ncravings for fish!\n3 uses only.");
ds_map_add(item, "price", 50);
ds_list_add(global.shop_items, item);

item = ds_map_create();
ds_map_add(item, "name", "Cake");
ds_map_add(item, "key", "cake");
ds_map_add(item, "description", "Time to grow up?\nPurchase the cake\nto mark your\nbirthday!");
ds_map_add(item, "price", 70);
ds_list_add(global.shop_items, item);
