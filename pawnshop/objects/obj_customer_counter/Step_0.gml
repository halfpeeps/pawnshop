if(instance_exists(obj_player)){
	if(place_meeting(obj_trigger_customer_counter.x, obj_trigger_customer_counter.y, obj_player)){
		if(obj_sys_input_default.inputE = true){
			obj_player.in_ui = true
			show_debug_message("UI entered")
		}
	}
}