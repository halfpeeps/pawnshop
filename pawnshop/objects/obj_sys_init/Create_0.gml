#region Stage 1
obj_game_init.stage1 = true
#region Instance Creation

if(!instance_exists(obj_sys_input_default)){
	instance_create_layer(0, 0, "layer_sys", obj_sys_input_default)
	show_debug_message("! Default input detection started")
}

if(!instance_exists(obj_sys_console_commands)){
	instance_create_layer(0, 0, "layer_sys", obj_sys_console_commands)
	show_debug_message("! Console command list obj started")
}

if(!instance_exists(obj_sys_global)){
	instance_create_layer(0, 0, "layer_sys", obj_sys_global)
	show_debug_message("! Game global variable list obj started")
}


#endregion
#endregion

#region Stage 2
obj_game_init.stage2 = true
#endregion

#region Stage 3
obj_game_init.stage3 = true
#endregion

#region Stage 4
obj_game_init.stage4 = true
#endregion

#region Stage 5
obj_game_init.stage5 = true
#endregion

#region Stage 6
obj_game_init.stage6 = true
#endregion

#region Stage 7
obj_game_init.stage7 = true
#endregion

#region Stage 8
obj_game_init.stage8 = true
#endregion