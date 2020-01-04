depth = -4;
show_inventory = false; 

inv_slots = 24;
inv_slots_width = 6;
inv_slots_height = 4;              
cell_size = 54; 

spr_inv_items = spr_plants;
spr_pausescreen = spr_pause;

spr_inv_items_colums = sprite_get_width(spr_inv_items)/cell_size;
spr_inv_items_rows = sprite_get_height(spr_inv_items)/cell_size;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

inv_UI_width = 600;
inv_UI_height = 420;

inv_UI_x = (gui_width * 0.5) - (inv_UI_width * 0.5);
inv_UI_y = (gui_height * 0.5) - (inv_UI_height * 0.5);

slots_x = inv_UI_x + 42;
slots_y = inv_UI_y + 102; 



//inventory  

ds_inventory = ds_grid_create(2, inv_slots);

x_buffer = 18;
y_buffer = 18;

//items

enum item {
	none = 0,
	cottongrass = 1,
	buttercup = 2,
	mimosa = 3,
	solaria = 4,
	sea_almond = 5,
	gladiola = 6,
}


/*
 repeat(inv_slots){
	ds_inventory[# 0,yy] = irandom_range(1, item.height-1);
	ds_inventory[# 1,yy] = irandom_range(1, 7);
	
	yy+=1;
}
*/

//world 1 plant nums
global.p_cot_num = 0;
global.p_but_num = 0;
global.p_mim_num = 0;
global.p_sol_num = 0;
global.p_sea_num = 0;
global.p_gla_num = 0;