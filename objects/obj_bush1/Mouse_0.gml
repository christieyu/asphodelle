var alreadyexists = false;
alreadyexists = instance_exists(obj_bushtimer);

if(!alreadyexists)
{
	alarm_set(2, 5*room_speed);   
	instance_create_layer(x, y, "Instances", obj_bushtimer);
	
	//collection
	global.ds_inventory[# 0,global.yy] = irandom_range(1, item.height-1);
	global.ds_inventory[# 1,global.yy] = irandom_range(1, 7);
	
	show_debug_message("created!")
}