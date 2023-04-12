if(!instance_exists(obj_sys_input_default)){
	instance_create_layer(0, 0, "layer_sys", obj_sys_input_default)
}

if(!instance_exists(obj_sys_console_commands)){
	instance_create_layer(0, 0, "layer_sys", obj_sys_console_commands)
}









//done
room_goto_next()