depth = -3;
show_inventory = true; 

inv_slots = 24;
inv_slots_width = 6;
inv_slots_height = 4;
cell_size = 54;

spr_inv_items = spr_testinv_items;

spr_inv_items_colums = sprite_get_width(spr_inv_items)/cell_size;
spr_inv_items_rows = sprite_get_height(spr_inv_items)/cell_size;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

inv_UI_width = 810;
inv_UI_height = 390;

inv_UI_x = (gui_width * 0.5) - (inv_UI_width * 0.5);
inv_UI_y = (gui_height * 0.5) - (inv_UI_height * 0.5);

slots_x = inv_UI_x + 72
slots_y = inv_UI_x + 72; 

//inventory

ds_inventory = ds_grid_create(2, inv_slots);

x_buffer = 12;
y_buffer = 12;

//items

enum item {
	none = 0,
	red = 1,
	blue = 2,
	green = 3,
	pink = 4,
	yellow = 5,
	purple = 6,
	height = 7,
}

var yy = 0; repeat(inv_slots){
	ds_inventory[# 0,yy] = irandom_range(1, item.height-1);
	ds_inventory[# 1,yy] = irandom_range(1, 7);
	
	yy+=1;
}




