#region Init
x = 100
y = 500
entering_queue = true
exiting_queue = false
walk_speed = 2
image_index = 1


#endregion


#region Get Queue Pos
queue_pos = obj_sys_global_var.customer_queue_count
if(queue_pos = 1){
	my_queuex = obj_sys_global_var.queue_posx1
	my_queuey = obj_sys_global_var.queue_posy1
}
else if(queue_pos = 2){
	my_queuex = obj_sys_global_var.queue_posx2
	my_queuey = obj_sys_global_var.queue_posy2
}
else if(queue_pos = 3){
	my_queuex = obj_sys_global_var.queue_posx3
	my_queuey = obj_sys_global_var.queue_posy3
}
else
{
	instance_destroy(self)
}

#endregion