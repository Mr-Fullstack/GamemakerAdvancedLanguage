
var mouse_left_click, mouse_left_release, mouse_right_click, mouse_right_release;

mouse_left_click = mouse_check_button(mb_left);
mouse_left_release = mouse_check_button_released (mb_left);
mouse_right_click = mouse_check_button(mb_right);
mouse_right_release = mouse_check_button_released (mb_right);


if( ( mouse_left_click || mouse_right_click )  && !moving)
{	
		if(mouse_right_release)
		{
			global.showOption = true;
		}
		
		if(global.hasSelection)
		{
			global.hasSelection = false;
			obj_accept_selection.selected = false;
		}
	
		_x_mouse_initial = mouse_x;
	    _y_mouse_initial = mouse_y;
		
		if(object_area == noone)
		{
			global.areaX = mouse_x;
		    global.areaY = mouse_y;
			object_area = instance_create_layer(mouse_x,mouse_y,"Instances",obj_area_selected)
		}
		moving = true;
}

if(mouse_left_release || mouse_right_release )
{
	if(object_area)
	{
		instance_destroy(object_area);
		moving = false;
		_x_mouse_initial = 0;
	    _y_mouse_initial = 0;
		//show_debug_message("soltou")
		object_area = noone;
	}
	
	if(mouse_right_release)
	{
		global.showOptionAll = true;
	}
}
	
if(moving)
{
	if(object_area)
	{
		global.areaWidth  = ( mouse_x - _x_mouse_initial ) + object_area.sprite_xoffset;
		global.areaHeight = ( mouse_y - _y_mouse_initial ) + object_area.sprite_yoffset;
	}
}
else
{
	instance_destroy(object_area);
	object_area = noone;
}
