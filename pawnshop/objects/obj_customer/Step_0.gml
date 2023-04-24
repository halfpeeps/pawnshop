#region debug customer exit
if(!debug_exit_triggeronce){
	if(obj_sys_console_commands.trigger_customer_exit){
		if(queue_pos = 1){
			if(!moveup){
				exiting_queue = true
				debug_exit_triggeronce = true
				show_debug_message("! Customer exit triggered")
			}
		}
	}
}
#endregion

#region Queue Movement
if(entering_queue){
	if(y > my_queuey){
		y = y - walk_speed
	}
	else{
		entering_queue = false
		show_debug_message("Customer at coords: " + string(x) + " " + string(y))
	}
}

if(exiting_queue){
	if(y < 500){
		y = y + walk_speed
		image_index = 3
		if(!exitqueue_triggeronce){
			if(queue_pos = 1){
				obj_sys_global_var.queuespot1_taken = false
			}
			exitqueue_triggeronce = true
		}
	}
	else
	{
		obj_sys_global_var.customer_queue_count -= 1
		instance_destroy(self)
	}
}

#region Moving Up in Queue

if(queue_pos != 1){
	if(!obj_sys_global_var.queuespot1_taken){
		moveup = true
		queue_pos -= 1
		moveup_by += queue_gap
		if(queue_pos = 1){
			obj_sys_global_var.queuespot1_taken = true
		}
	}
}

if(moveup){
	if(moveup_by > 0){
		y -= walk_speed
		moveup_by -= walk_speed
	}
	else{
		moveup_by = 0
		moveup = false
	}
}

#endregion

#endregion