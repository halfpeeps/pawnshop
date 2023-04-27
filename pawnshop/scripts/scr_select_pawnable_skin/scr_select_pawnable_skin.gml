function scr_select_pawnable_skin(item){
	item.image_speed = 0
	if(instance_exists(item)){
		if(item.image_number > 1){
			item.image_index = floor(random_range(0, item.image_number))
		}
	}
		
}