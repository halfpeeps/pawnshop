#region spawn_customer
if(spawn_customer){
	if(keyboard_check(ord("C"))){
		instance_create_layer(100, 500, "layer_instances", obj_customer)
		show_debug_message("Spawned Customer")
	}
}
#endregion