//UI toggle

if(!obj_sys_global_var.in_ui){
	if(instance_exists(obj_player)){
		if(place_meeting(obj_trigger_customer_counter.x, obj_trigger_customer_counter.y, obj_player)){
			if(obj_sys_input_default.inputE = true){
				if(!obj_sys_global_var.exit_ui_cooldown){
					
					obj_sys_global_var.in_ui = true
					show_debug_message("! UI entered")
					obj_sys_global_var.in_ui_cooldown = true
					if(obj_sys_console_commands.display_ui_cooldown)
					{
						show_debug_message("! UI cooldown after enter started")
					}
				}
			}
		}
	}
}

if(obj_sys_global_var.in_ui_cooldown){
	if(cooldown_count < obj_sys_global_var.cooldown_after_ui_entry){
		cooldown_count += 1
	}
	else {
		obj_sys_global_var.in_ui_cooldown = false
		cooldown_count = 0
	}
}

if(obj_sys_global_var.in_ui){
	if(!obj_sys_global_var.in_ui_cooldown){
		if(obj_sys_input_default.inputE){
			obj_sys_global_var.in_ui = false
			obj_sys_global_var.exit_ui_cooldown = true
			cooldown_count = obj_sys_global_var.exit_ui_cooldown
		}
	}
}

if(obj_sys_global_var.in_ui_cooldown){
	if(obj_sys_console_commands.display_ui_cooldown){
		show_debug_message(cooldown_count)
	}
}

if(obj_sys_global_var.exit_ui_cooldown){
	if(cooldown_count < obj_sys_global_var.cooldown_after_ui_exit)
	{
		cooldown_count += 1
		if(obj_sys_console_commands.display_ui_cooldown){
			show_debug_message(cooldown_count)
		}
	}
	else {
		obj_sys_global_var.exit_ui_cooldown = false
		cooldown_count = 0
	}
}