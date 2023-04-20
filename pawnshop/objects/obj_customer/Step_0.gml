#region Spawn Customer
if(obj_sys_console_commands.spawn_customer){
	if(obj_sys_console_commands.trigger_customer_exit){
		if(queue_pos = 1){
			exiting_queue = true
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
		show_debug_message("Customer at coords:")
		show_debug_message(x)
		show_debug_message(y)
	}
}

if(exiting_queue){
	if(y < 500){
		y = y + walk_speed
		image_index = 3
	}
	else
	{
		show_debug_message("! Customer exited, destroying")
		obj_sys_global_var.customer_queue_count -= 1
		show_debug_message("New customer_queue_count:")
		show_debug_message(obj_sys_global_var.customer_queue_count)
		instance_destroy(self)
	}
	
	if(leaving_queue = 0){
		if(queue_pos = 1){
		obj_sys_global_var.customer_pos1_taken = false
		}
		leaving_queue = 1
	}
}



#region Move up in queue
if(!queue_moving){
	if(queue_pos > obj_sys_global_var.customer_queue_count){
		show_debug_message("!")
		show_debug_message("queue_pos:")
		show_debug_message(queue_pos)
		show_debug_message("customer_queue_count:")
		show_debug_message(obj_sys_global_var.customer_queue_count)
		queue_moving = true
		move_to = y - obj_sys_global_var.queue_gap
		queue_pos -= 1
		show_debug_message("New queue_pos:")
		show_debug_message(queue_pos)
	}
	
	if(queue_pos = 2){
		if(!obj_sys_global_var.customer_pos1_taken){
			queue_moving = true
			move_to = y - obj_sys_global_var.queue_gap
			queue_pos -= 1
			show_debug_message("New queue_pos:")
			show_debug_message(queue_pos)
			obj_sys_global_var.customer_pos1_taken = true
		}
	}
}

if(queue_moving){
	if(y > move_to){
		y -= walk_speed
	}
	else{
		queue_moving = false
		move_to = 0
	}
}
#endregion
#endregion