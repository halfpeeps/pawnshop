switch(count){
	case 5:
		image_index = 2
		//init here:
		
		#region Instance Creation

		if(!instance_exists(obj_sys_input_default)){
			instance_create_layer(0, 0, "layer_sys", obj_sys_input_default)
			show_debug_message("! Default input detection started")
		}

		if(!instance_exists(obj_sys_console_commands)){
			instance_create_layer(0, 0, "layer_sys", obj_sys_console_commands)
			show_debug_message("! Console command list obj started")
		}

		if(!instance_exists(obj_sys_global)){
			instance_create_layer(0, 0, "layer_sys", obj_sys_global)
			show_debug_message("! Game global variable list obj started")
		}
		#endregion
	break;
	
	case 10:
		image_index = 3
		//init here:
		
		
	break;
	
	case 15:
		image_index = 4
		//init here:
		
		
	break;
	
	case 20:
		image_index = 5
		//init here:
		
		
	break;
	
	case 25:
		image_index = 6
		//init here:
		
		
	break;
	
	case 30:
		image_index = 7
		//init here:
		
		
	break;
	
	case 35:
		image_index = 8
		//init here:
		
		
	break;
	
	case 40:
		image_index = 9
		//init here:
		
		
		
		
		room_goto_next()
	break;
}

count += 1