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




//done
room_goto_next()