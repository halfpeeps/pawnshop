#region Move in and out of queue
if(entering_queue){
	if(y != my_queuey){
		y = y - 2
	}
	else{
		entering_queue = false
	}
}



if(exiting_queue){
	if(y != 500){
		y = y + 2
		image_index = 3
	}
	else
	{
		instance_destroy(self)
	}


#endregion