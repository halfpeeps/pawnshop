//Basic movement
if(in_ui = false){
	

	if(!instance_exists(obj_sys_input_default))
	{
		instance_create_layer(0, 0, "layer_sys", obj_sys_input_default)
	}

	var move_temp_x = 0
	var move_temp_y = 0
	if(obj_sys_input_default.inputW = true){
		move_temp_y -= walk_speed
		direction_facing = 0
		if(obj_sys_console_commands.show_player_input_detection = true){
			show_debug_message("! obj_player detected key press")
		}
	}

	if(obj_sys_input_default.inputD = true){
		move_temp_x += walk_speed
		direction_facing = 2
		if(obj_sys_console_commands.show_player_input_detection = true){
		show_debug_message("! obj_player detected key press")
		}
	}

	if(obj_sys_input_default.inputA = true){
		move_temp_x -= walk_speed
		direction_facing = 1
		if(obj_sys_console_commands.show_player_input_detection = true){
		show_debug_message("! obj_player detected key press")
		}
	}

	if(obj_sys_input_default.inputS = true){
		move_temp_y += walk_speed
		direction_facing = 3
		if(obj_sys_console_commands.show_player_input_detection = true){
		show_debug_message("! obj_player detected key press")
		}
	}

	x += move_temp_x
	y += move_temp_y
}

if(in_ui = true){
	image_index = image_index
}
else {
	image_index = direction_facing
}