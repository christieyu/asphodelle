global.bushclick = true;
var alreadyexists = false;
alreadyexists = instance_exists(obj_bushtimer);

if(!alreadyexists&&global.bushclick==true)
{
	alarm_set(2, 5*room_speed);   
	instance_create_layer(x, y, "Instances", obj_bushtimer);
	
	global.bushclick = false;
	 
	show_debug_message("created!")
}  
