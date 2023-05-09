function scr_anim_slide_in_left(obj, move_to_y){
	
	var _move_stop_calc = obj.y - move_to_y
	var _move_mode = 0
	var _move_by = 0
	
	if(_move_stop_calc > 50){
		_move_mode = 4
	}
	else if(_move_stop_calc > 15){
		_move_mode = 3
	}
	else if(_move_stop_calc > 7){
		_move_mode = 2
	}
	else if(_move_stop_calc > 0){
		_move_mode = 1
	}
	

	switch(_move_mode){
		case 4:
			_move_by = obj_sys_global.speed_stage_4
		break;
		
		case 3:
			_move_by = obj_sys_global.speed_stage_3
		break;
		
		case 2:
			_move_by = obj_sys_global.speed_stage_2
		break;
		
		case 1:
			_move_by = obj_sys_global.speed_stage_1
		break;
		
		case 0:
			_move_by = 0
		break;
	}
	
	return _move_by
		
}