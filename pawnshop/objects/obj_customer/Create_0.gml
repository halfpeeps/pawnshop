#region Init
obj_sys_global_var.customer_queue_count += 1

//setting var
x = 100
y = 500
image_speed = 0
image_index = 0
entering_queue = true
exiting_queue = false
walk_speed = obj_sys_global_var.customer_walk_speed
debug_exit_triggeronce = false

exitqueue_triggeronce = false
moveup = false
moveup_by = 0
queue_gap = obj_sys_global_var.queue_gap


#endregion


#region Get Queue Pos
queue_pos = obj_sys_global_var.customer_queue_count
if(queue_pos = 1){
	my_queuex = obj_sys_global_var.queue_posx1
	my_queuey = obj_sys_global_var.queue_posy1
	show_debug_message("! Customer queue position assigned: " + string(queue_pos))
	obj_sys_global_var.queuespot1_taken = true
}
else if(queue_pos = 2){
	my_queuex = obj_sys_global_var.queue_posx2
	my_queuey = obj_sys_global_var.queue_posy2
	show_debug_message("! Customer queue position assigned: " + string(queue_pos))
}
else if(queue_pos = 3){
	my_queuex = obj_sys_global_var.queue_posx3
	my_queuey = obj_sys_global_var.queue_posy3
	show_debug_message("! Customer queue position assigned: " + string(queue_pos))
}
else
{
	show_debug_message("! Queue full, customer instance destroyed")
	obj_sys_global_var.customer_queue_count -= 1
	instance_destroy(self)
}

#endregion

show_debug_message("! Current customer queue count: " + string(obj_sys_global_var.customer_queue_count))