// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_destroy_customer(customer_id, customer_hitbox, customer_held_item){
		show_debug_message("obj_customer " + string(customer_id) + " destroyed")
		if(instance_exists(customer_hitbox))
		{
			instance_destroy(customer_hitbox)
		}
		if(instance_exists(customer_held_item)){
			instance_destroy(customer_held_item)
		}
		instance_destroy(customer_id)  //destroy instance
}