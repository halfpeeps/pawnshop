#region debug customer exit
//triggers customer exit sequence with V
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
#region Entering/Exiting Queue
if(entering_queue){
	if(y > my_queuey){  //if current y is less than assigned queue coordinates
		y = y - walk_speed
	}
	else{
		entering_queue = false
		show_debug_message("Customer at coords: " + string(x) + " " + string(y))
	}
}
if(exiting_queue){
	if(y < 500){  //if current y is less than off screen coords 500
		y = y + walk_speed
		image_index = 3  //facing down
		if(!exitqueue_triggeronce){
			obj_sys_global_var.customer_queue_count -= 1  //remove 1 from customer count
			if(queue_pos = 1){
				obj_sys_global_var.queuespot1_taken = false  //if in position 1, free up position 1
			}
			exitqueue_triggeronce = true
		}
	}
	else
	{
		scr_destroy_customer(id, hitbox.id, held_item.id)
	}
}
#endregion
#region Moving Up in Queue

if(queue_pos != 1){  //if queue pos is not 1, and there is no customer in pos 1
	if(!obj_sys_global_var.queuespot1_taken){
		moveup = true
		queue_pos -= 1  //subtract 1 from instance queue position
		moveup_by += queue_gap //the amount to move instance up  + queue gap
		if(queue_pos = 1){
			obj_sys_global_var.queuespot1_taken = true //if new position is pos 1, state that pos 1 is taken
		}
	}
}

if(queue_pos = 3){  //plaster fix to make sure instance in final position moves up to middle position
	if(!moveup){
		if(obj_sys_global_var.customer_queue_count = 2){
			moveup = true
			queue_pos -= 1
			moveup_by += queue_gap
		}
	}
}

if(moveup){
	if(moveup_by > 0){  //if there is still an amount to move up by
		y -= walk_speed  //mobve up
		moveup_by -= walk_speed  //subtract amount just moved from remaining move amount
	}
	else{
		moveup_by = 0  //make sure moveup_by is 0 when move up complete
		moveup = false  //disable moveup
	}
}

#endregion
#region customer stuck
//plaster fix
if(obj_sys_global_var.customer_queue_count = 0){  //if customers exist when global var states there are none
	if(!exit_stuck_triggeronce){
		exit_stuck_triggeronce = true
		exit_stuck = true
		show_debug_message("obj_customer " + string(id) + " is stuck, triggering customer exit")
	}
}

if(image_index = 3){
	if(y = yprevious){
		exit_stuck_triggeronce = true
		exit_stuck = true
		show_debug_message("obj_customer " + string(id) + " is stuck, triggering customer exit")
	}
}

if(exit_stuck)
{
	if(y < room_height){  //move off screen
		y -= 2
	}
	else
	{
		if(obj_sys_global_var.customer_queue_count > 0){
			obj_sys_global_var.customer_queue_count -= 1
		}
		scr_destroy_customer(id, hitbox.id, held_item.id)
	}
}
#endregion
#endregion
#region Item Movement
if(is_pawning){
	item_follow = true
}
else if(is_selling){
	item_follow = true
}
else{
	item_follow = false
}

if(item_follow){
	held_item.x = x + 28
	held_item.y = y - 18
}

#endregion
#region Move Hitbox
if(instance_exists(obj_customer_hitbox)){
	hitbox.x = x
	hitbox.y = y + 12
}
#endregion