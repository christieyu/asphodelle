 if (global.pause) {
	exit; 
}

sprite_index = spr_w1_bush;
image_index += 2; 

var alreadyexists = false;
alreadyexists = instance_exists(obj_bushtimer);
	
if(!alreadyexists){
	
	alarm_set(2, 5*room_speed);   

	instance_create_layer(x, y, "Instances", obj_bushtimer);
	 
	//show_debug_message("created!")
	
	var chance = irandom_range(0, 100);
	//var world1_p = choose(global.p_cg_num, global.p_bc_num, global.p_mimo_num, global.p_solar_num);
	//show_debug_message("chosen"); 
	show_debug_message(chance);         
	
	if (chance < 70)
	{
		global.p_cot_num++;
	}
	
	else if (chance < 85)
	{
		global.p_but_num++;
	}
	
	else if (chance < 94)
	{
		global.p_mim_num++;
	}
	
	else if (chance < 98)
	{
		global.p_sol_num++;
	}
		
}
