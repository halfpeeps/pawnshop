#region customer
//debug spawn and destroy trigger code
#region spawn_customer
if(spawn_customer){
	if(keyboard_check_pressed(ord("C"))){
		instance_create_layer(100, 500, "layer_instances", obj_customer)
		show_debug_message("Spawned Customer")
	}
}
#endregion
#region remove_customer
if(spawn_customer){
	if(keyboard_check_pressed(ord("V"))){
		trigger_customer_exit = true
	}
	if(keyboard_check_released(ord("V"))){
			trigger_customer_exit = false
	}
}
#endregion
#endregion