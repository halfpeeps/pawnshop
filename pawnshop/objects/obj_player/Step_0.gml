#region Movement
if(obj_sys_global_var.in_ui = false){
	

	if(!instance_exists(obj_sys_input_default))
	{
		instance_create_layer(0, 0, "layer_sys", obj_sys_input_default)
	}

	var move_temp_x = 0
	var move_temp_y = 0
	if(obj_sys_input_default.inputUp = true){
		move_temp_y -= walk_speed
		direction_facing = 0
		if(obj_sys_console_commands.show_player_input_detection = true){
			show_debug_message("! obj_player detected key press")
		}
	}

	if(obj_sys_input_default.inputRight = true){
		move_temp_x += walk_speed
		direction_facing = 2
		if(obj_sys_console_commands.show_player_input_detection = true){
		show_debug_message("! obj_player detected key press")
		}
	}

	if(obj_sys_input_default.inputLeft = true){
		move_temp_x -= walk_speed
		direction_facing = 1
		if(obj_sys_console_commands.show_player_input_detection = true){
		show_debug_message("! obj_player detected key press")
		}
	}

	if(obj_sys_input_default.inputDown = true){
		move_temp_y += walk_speed
		direction_facing = 3
		if(obj_sys_console_commands.show_player_input_detection = true){
		show_debug_message("! obj_player detected key press")
		}
	}

	x += move_temp_x
	y += move_temp_y
}

if(obj_sys_global_var.in_ui = true){
	image_index = image_index
}
else {
	if(!anim_active){
		image_index = direction_facing
	}
}

#region Animation
//detect walking
if(x != xprevious){
	is_walking = true
}
else if(y != yprevious){
	is_walking = true
}
else {
	is_walking = false
}


//walk animation
if(is_walking){
	if(!anim_active){
		anim_direction = direction_facing
		if(direction_facing = 0){
			sprite_index = anim_playertest_walk_up
			was_walking = true
		}
		if(direction_facing = 2){
			sprite_index = anim_playertest_walk_right
			was_walking = true
		}
		if(direction_facing = 1){
			sprite_index = anim_playertest_walk_left
			was_walking = true
		}
		if(direction_facing = 3){
			sprite_index = anim_playertest_walk_down
			was_walking = true
		}
	
		image_speed = 2
		anim_active = true
	}
}
else if(was_walking)
{
	sprite_index = idle_sprite
	image_speed = 0
	was_walking = false
	anim_active = false
	//show_debug_message("anim deactivated")
}

if(is_walking){
	if(anim_direction != direction_facing){
		if(direction_facing = 0){
			sprite_index = anim_playertest_walk_up
		}
		if(direction_facing = 2){
			sprite_index = anim_playertest_walk_right
		}
		if(direction_facing = 1){
			sprite_index = anim_playertest_walk_left
		}
		if(direction_facing = 3){
			sprite_index = anim_playertest_walk_down
		}
	}
}
#endregion
#endregion

