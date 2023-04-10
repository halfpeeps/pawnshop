scr_rm_setup()


	
var _wait = 0
show_debug_message("! Creating sys_init")
var _init = instance_create_layer(0, 0, "layer_sys", obj_sys_init)
while obj_sys_init.init_complete != 0{
	_wait =+ 1
}
instance_destroy(_init)