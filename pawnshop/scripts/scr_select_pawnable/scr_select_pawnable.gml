function scr_select_pawnable(){
	var _class = 0
	
	var _rng_class = random_range(0, 100)
	if(_rng_class > 80){
		if(_rng_class > 90){
			if(_rng_class > 97){
				_class = 4
			}
			else{
				_class = 3
			}
		}
		else{
			_class = 2
		}
	}
	else{
		_class = 1
	}
	
	if(instance_exists(obj_sys_item_lib)){
		if(_class = 1){
			var _item = random_range(0, array_length(obj_sys_item_lib.items_common))
		}
		else if(_class = 2){
			var _item = random_range(0, array_length(obj_sys_item_lib.items_uncommon))
		}
		else if(_class = 3){
			var _item = random_range(0, array_length(obj_sys_item_lib.items_rare))
		}
		else if(_class = 4){
			var _item = random_range(0, array_length(obj_sys_item_lib.items_legendary))
		}
	}
	
	if(instance_exists(obj_sys_item_lib)){
		instance_destroy(obj_sys_item_lib)
	}
	return _item
}