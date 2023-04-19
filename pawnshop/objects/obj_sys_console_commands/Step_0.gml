#region customer
#region spawn_customer
if(spawn_customer){
	if(keyboard_check_pressed(ord("C"))){
		instance_create_layer(100, 500, "layer_instances", obj_customer)
		show_debug_message("Spawned Customer")
		var temp_count = 0
		while(temp_count != 1000){
			temp_count += 1
		}	
	}
}
#endregion
#region remove_customer
if(spawn_customer){
	if(keyboard_check_pressed(ord("V"))){
		if(instance_exists(obj_customer)){
			obj_customer.exiting_queue = true
		}
	}
}
#endregion
#endregion