//init code, keep even beween stages (1-8)


if(load_count = 0)
{
	if(stage1 = true)
	{
		///init step 1
		image_index = 1
		
		
		
		
		
		show_debug_message("Loading 10%")
	}
}

if(load_count < 5)
{
	if(stage2 = true)
	{
		///init step 2
		//instance_create_layer(0, 0, "layer_null", null_gameinfo)
		
		image_index = 2
		
		
		
		
		show_debug_message("Loading 20%")
	}
}

if(load_count < 10)
{
	if(stage3 = true)
	{
		///init step 3
		image_index = 3
		

		
		
		
		
		
		show_debug_message("Loading 30%")
	}
}

if(load_count < 15)
{
	if(stage4 = true)
	{
		///init step 4
		image_index = 4

		
		
		
		
		
		show_debug_message("Loading 50%")
	}
}

if(load_count < 20)
{
	if(stage5 = true)
	{
		///init step 5
		image_index = 5

		
		
		
		
		
		
		show_debug_message("Loading 60%")
	}
}

if(load_count < 25)
{
	if(stage6 = true)
	{
		///init step 6
		image_index = 6

		
		
		
		
		
		show_debug_message("Loading 70%")
	}
}

if(load_count < 30)
{
	if(stage7 = true)
	{
		///init step 7
		image_index = 7

		
		
		
		
		
		
		
		show_debug_message("Loading 80%")
	}
}

if(load_count < 35)
{
	if(stage8 = true)
	{
		///init step 8
		image_index = 8

		
		
		
		
		
		
		
		show_debug_message("Loading 90%")
	}
}

if(load_count < 40)
{
	if(stage8 = true){
		image_index = 9
		show_debug_message("Loading Complete")
		room_goto(asset_get_index(obj_sys_global.first_room))
	}
}

load_count = load_count + 1