
if( mouse_check_button_released(mb_left) )
{
	var parent = instance_create_layer(mouse_x,mouse_y,"Instances",obj_parent);
	parent.father = noone;
}

