/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3DFA33F0
/// @DnDArgument : "steps" "10"
alarm_set(0, 10);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 1C5F9AD1
/// @DnDArgument : "direction" "135,90,45,180,0,225,270,315"
direction = choose(135,90,45,180,0,225,270,315);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 62E226A3
/// @DnDArgument : "speed" "1"
speed = 1;

/// @DnDAction : YoYo Games.Instances.Call_User_Event
/// @DnDVersion : 1
/// @DnDHash : 48FE9AA2
event_user(0);