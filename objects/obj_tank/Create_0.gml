depth = -4;
show_tank = false; 

selected_slot = 0;

m_slotx = 0;
m_sloty = 0;

inv_slots = 12;  
inv_slots_width = 4;
inv_slots_height = 3;              
cell_size = 54; 

spr_tank = spr_breedtank;

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

ds_tank = ds_grid_create(2, inv_slots);
spr_inv_items = spr_plants;

selected_item = -1;
x_buffer = 18;
y_buffer = 18;

//items

enum seed {
	none = 0,
	cottongrass = 1,
	buttercup = 2,
	mimosa = 3,
	solaria = 4,
	sea_almond = 5,
	gladiola = 6,

}

