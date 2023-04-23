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
		obj_sys_global_var.customer_queue_count -= 1
		instance_destroy(self)
	}
}

#endregion