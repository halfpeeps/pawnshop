#region Queue/pos init
obj_sys_global_var.customer_queue_count += 1
x = 100
y = 500
image_speed = 0
image_index = 0
entering_queue = true  //true if instance is entering the queue
exiting_queue = false  //true if instance is exiting the queue
//walk_speed = 2  now set in var def
debug_exit_triggeronce = false
exitqueue_triggeronce = false
moveup = false  //true if queue is moving
moveup_by = 0  //var for number of pixels instance needs to move up by (changes based off number of pixels left)
queue_gap = obj_sys_global_var.queue_gap  //gap between each customer in the queue (in pixels)
exit_stuck_triggeronce = false
exit_stuck = false  //true if instance is stuck and won't leave
#endregion


#region Get Queue Pos
queue_pos = obj_sys_global_var.customer_queue_count
if(queue_pos = 1){
	my_queuex = obj_sys_global_var.queue_posx1  //gets x coords from global var
	my_queuey = obj_sys_global_var.queue_posy1  //gets y coords from global var
	show_debug_message("! Customer queue position assigned: " + string(queue_pos))
	obj_sys_global_var.queuespot1_taken = true  //true if first in line
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

#region pawn/sell/buy init
//init reason for entering store
is_selling = false
is_buying = false
is_pawning = true  //currently set to true for debug
#endregion

#region Set pawnable item
if(is_pawning = true){
	instance_create_layer(0, 0, "layer_sys", obj_sys_item_lib)
	held_item = scr_select_pawnable()
	instance_create_layer(x, y, "layer_sys", held_item)
	held_item.image_xscale = .3
	held_item.image_yscale = .3
	held_item.image_speed = 0
}
#endregion