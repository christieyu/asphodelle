if(!show_inventory) exit; 

draw_sprite(spr_inv, 0, inv_UI_x, inv_UI_y);

var c = c_black;
//inventory
var ii, ix, iy, xx, yy, sx, sy, iitem, inv_grid;
  
ii = 0; ix = 0; iy = 0; inv_grid = ds_inventory;


repeat(inv_slots) {
	xx = slots_x + ((cell_size+x_buffer)*ix);
	yy = slots_y + ((cell_size+y_buffer)*iy);
	
	iitem = inv_grid[# 0 , ii];
	sx = (iitem mod spr_inv_items_colums)*cell_size;
	sy = (iitem div spr_inv_items_colums)*cell_size;
	
	if(iitem > 0) draw_sprite_part_ext(
		spr_inv_items, 0, sx, sy, cell_size, cell_size, xx, yy, 1, 1, c_white, 1
		
	);
	
	//draw number 
	if(iitem > 0){
		var number = inv_grid[# 1, ii];
		draw_text_color(xx,yy, string(number), c,c,c,c,1); 
	}
	
	//increment
	ii += 1;
	ix = ii mod inv_slots_width;
	iy = ii div inv_slots_width;
	
}



