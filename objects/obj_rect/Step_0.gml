
var mouse_enter, mouse_click , mouse_release;

mouse_click = mouse_check_button(mb_left);
mouse_enter = position_meeting(mouse_x,mouse_y,self);
mouse_release = mouse_check_button_released (mb_left);

if(mouse_enter && !movendo)
{
	if(mouse_click)
	{
		 offsetX = abs(x - mouse_x);
	     offsetY = abs(y - mouse_y);
		 movendo = true;
	}
}


if(mouse_release)
{
	movendo = false;
}
	
if(movendo)
{

	
	var distanceX = mouse_x - offsetX;
	var distanceY = mouse_y - offsetY;
	
	x = distanceX ;
	y = distanceY ;
	image_index = 1;
	
}
else
{

	x = x ;
	y = y ;
	image_index = 0;
}



	