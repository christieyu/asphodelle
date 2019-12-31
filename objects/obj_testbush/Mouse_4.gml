/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 4CA8037D
/// @DnDInput : 3
/// @DnDArgument : "var" "seedadd"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option" "global.seednum1"
/// @DnDArgument : "option_1" "global.seednum2"
/// @DnDArgument : "option_2" "global.seednum3"
var seedadd = choose(global.seednum1, global.seednum2, global.seednum3);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5CB72188
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "seedadd"
seedadd += 1;