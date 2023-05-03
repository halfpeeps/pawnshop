#region ToggleUI

if(!obj_sys_global_var.in_ui){  //if not already in ui
	if(instance_exists(obj_player)){  //if player is touching counter
		if(place_meeting(obj_trigger_customer_counter.x, obj_trigger_customer_counter.y, obj_player)){
			if(obj_sys_input_default.inputInteract = true){  //if interact key is pressed
				if(!obj_sys_global_var.exit_ui_cooldown){  //if not in ui trigger cooldown
					
					obj_sys_global_var.in_ui = true  //in ui
					show_debug_message("! UI entered")
					obj_sys_global_var.in_ui_cooldown = true  //start ui trigger cooldown
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
	if(cooldown_count < obj_sys_global_var.cooldown_after_ui_entry){  //if cooldown counter is less than required cooldown amount
		cooldown_count += 1
	}
	else {
		obj_sys_global_var.in_ui_cooldown = false  //cooldown end
		cooldown_count = 0  //reset cooldown counter
	}
}

if(obj_sys_global_var.in_ui){  //if in ui
	if(!obj_sys_global_var.in_ui_cooldown){  //if not in ui cooldown period
		if(obj_sys_input_default.inputInteract){  //if interact key is pressed
			obj_sys_global_var.in_ui = false  //disable ui
			obj_sys_global_var.exit_ui_cooldown = true  //start ui exit cooldown
			cooldown_count = obj_sys_global_var.exit_ui_cooldown  //set cooldown counter to global var cooldown amount
		}
	}
}

if(obj_sys_global_var.in_ui_cooldown){  //debug to show how long is left in ui cooldown
	if(obj_sys_console_commands.display_ui_cooldown){
		show_debug_message(cooldown_count)
	}
}

if(obj_sys_global_var.exit_ui_cooldown){  //if ui exit cooldown is triggered
	if(cooldown_count < obj_sys_global_var.cooldown_after_ui_exit)  //if cooldown count is less than global var cooldown counter
	{
		cooldown_count += 1  //increase count by 1
		if(obj_sys_console_commands.display_ui_cooldown){  //if debug code to display cooldown count in console is active
			show_debug_message(cooldown_count)
		}
	}
	else {  //if cooldown count has ended
		obj_sys_global_var.exit_ui_cooldown = false  //disable cooldown count
		cooldown_count = 0  //reset cooldown count
	}
}

#endregion