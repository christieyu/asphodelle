 if(keyboard_check_pressed(ord("E"))) {
	show_inventory = !show_inventory 
	}

if(!show_inventory) exit; 

draw_sprite(spr_pause, 0, gui_width/2, gui_height/2);
draw_sprite(spr_inv, 0, inv_UI_x, inv_UI_y);

var c = c_black;
//inventory
var ii, ix, iy, xx, yy, sx, sy, iitem, inv_grid, inv_seed_grid, inv_shiny_grid;
  
ii = 0; ix = 0; iy = 0; inv_grid = ds_inventory; inv_seed_grid = ds_inventory_seed; inv_shiny_grid = ds_inventory_shiny;


repeat(inv_slots) {
	xx = slots_x + ((cell_size+x_buffer)*ix);
	yy = slots_y + ((cell_size+y_buffer)*iy);
	
	iitem = inv_grid[# 0 , ii];
	sx = (iitem mod spr_inv_items_colums)*cell_size;
	sy = (iitem div spr_inv_items_colums)*cell_size;
	
	
	switch(ii){
		case selected_slot:
			if(iitem > 0) draw_sprite_part_ext(
				spr_inv_items, 0, sx, sy, cell_size, cell_size, xx, yy, 1, 1, c_white, 1
				 );
				gpu_set_blendmode(bm_add);
				draw_sprite_part_ext(spr_inv_items, 0, sx, sy, cell_size, cell_size, xx, yy, 1, 1, c_white, 0.2);
				gpu_set_blendmode(bm_normal);
				
		break;
		
		case selected_item:
			if(iitem > 0) draw_sprite_part_ext(
				spr_inv_items, 0, sx, sy, cell_size, cell_size, 504, 102, 1, 1, c_white, 0.3); 
		
		default:
			if(iitem > 0) draw_sprite_part_ext(
				spr_inv_items, 0, sx, sy, cell_size, cell_size, xx, yy, 1, 1, c_white, 1);
		break; 
	}
	
	
	//increment
	ii += 1; 
	ix = ii mod inv_slots_width;
	iy = ii div inv_slots_width;
	
}

if(selected_slot != -1){
	//item
	iitem = inv_grid[# 0 , selected_slot];
	sx = (iitem mod spr_inv_items_colums)*cell_size;
	sy = (iitem div spr_inv_items_colums)*cell_size;
	draw_sprite_part_ext(
	spr_inv_items, 0, sx, sy, cell_size, cell_size, 180+504, 78+198, 1, 1, c_white, 1); 
	draw_sprite_part_ext(
	spr_inv_seeds, 0, sx, sy, cell_size, cell_size, 180+504, 78+102, 1, 1, c_white, 1); 
	draw_sprite_part_ext(
	spr_inv_splants, 0, sx, sy, cell_size, cell_size, 180+504, 78+294, 1, 1, c_white, 1); 
	var inum = inv_grid[# 1, selected_slot];
	var inum_s = inv_seed_grid[# 1, selected_slot];
	var inum_sp = inv_shiny_grid[# 1, selected_slot];

	draw_set_halign(fa_center);
	draw_set_font(ft_game);
	if(inum > 0) {
		draw_text_color(180+532, 78+160, string(inum), c,c,c,c, 1);
		draw_text_color(180+532, 78+265, string(inum_s), c,c,c,c, 1);
		draw_text_color(180+532, 78+355, string(inum_s), c,c,c,c, 1);
	}
}

