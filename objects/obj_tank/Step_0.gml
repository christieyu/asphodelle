#region Mouse Slot
mousex = device_mouse_x_to_gui(0);
mousey = device_mouse_y_to_gui(0);

var cell_xbuff = (cell_size+x_buffer);
var cell_ybuff = (cell_size+y_buffer);

var i_mousex = mousex - slots_x;
var i_mousey = mousey - slots_y;

var nx = i_mousex div cell_xbuff;
var ny = i_mousey div cell_ybuff;
 
if(i_mousex >= 0 and i_mousex < (cell_xbuff*inv_slots_width) and i_mousey >= 0 and i_mousey < (cell_ybuff*inv_slots_height)){
	var sx = i_mousex - (nx*cell_xbuff);
	var sy = i_mousey - (ny*cell_xbuff);
	
	if((sx < cell_size) and (sy < cell_size)){
		m_slotx = nx; 
		m_sloty = ny;
	}
}

//set selected slot to mouse pos
selected_slot = min(inv_slots-1, m_slotx + (m_sloty*inv_slots_width));
#endregion

//click item

var inv_grid = ds_tank;
var ss_item = tank_grid[# 0, selected_slot];

if(ss_item != seed.none){
	if(mouse_check_button_pressed(mb_right)){
		selected_item = selected_slot;
	}
}

//cottongrass
ds_tank[# 0, 0] = seed.cottongrass;                          
ds_tank[# 1, 0] = global.p_cot_num;
//buttercup
ds_tank[# 0, 1] = seed.buttercup;
ds_tank[# 1, 1] = global.p_but_num;
//mimosa
ds_tank[# 0, 2] = seed.mimosa;
ds_tank[# 1, 2] = global.p_mim_num;
//solaria
ds_tank[# 0, 3] = seed.solaria;
ds_tank[# 1, 3] = global.p_sol_num;
//sea almond
ds_tank[# 0, 4] = seed.sea_almond;
ds_tank[# 1, 4] = global.p_sea_num;
//gladiola
ds_tank[# 0, 5] = seed.gladiola;
ds_tank[# 1, 5] = global.p_gla_num;







