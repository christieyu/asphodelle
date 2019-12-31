/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 330D612D


/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 59D1F918
/// @DnDArgument : "steps" "240"
alarm_set(0, 240);

/// @DnDAction : YoYo Games.Instances.Get_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2B2278A9
/// @DnDArgument : "var" "bushtimer"
bushtimer = alarm_get(0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4C0E0B81
/// @DnDArgument : "var" "bushtimer"
if(bushtimer == 0)
{

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7B94DB2B
/// @DnDApplyTo : 2707aa60-5894-46ca-88e9-76094a0884de
with(obj_bushtimer) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6C295902
/// @DnDArgument : "xpos" "x"
/// @DnDArgument : "ypos" "y"
/// @DnDArgument : "var" "inst"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_bush1"
/// @DnDSaveInfo : "objectid" "1ac4b500-fd59-4ca3-9c68-682ec7df06a7"
var inst = instance_create_layer(x, y, "Instances", obj_bush1);