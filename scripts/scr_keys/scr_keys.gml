
function scr_keyboard_check()
{
	
	
	if(keyboard_check_direct(vk_up) && keyboard_check_direct(vk_left) )
	{
		return "up | left";
	}
	 if(keyboard_check_direct(vk_up) && keyboard_check_direct(vk_right) )
	{
		return "up | right";
	}
   if(keyboard_check_direct(vk_down) && keyboard_check_direct(vk_left) )
	{
		return "down | left";
	}
	 if(keyboard_check_direct(vk_down) && keyboard_check_direct(vk_right) )
	{
		return "down | right";
	}
	
	if(keyboard_check_direct(vk_up))
	{
		return "up";
	}
	
	if(keyboard_check_direct(vk_down))
	{
		return "down";
	}
	
	if(keyboard_check_direct(vk_left))
	{
		return "left";
	}
	if(keyboard_check_direct(vk_right))
	{
		return "right";
	}
	if(keyboard_check_direct( ord("W")))
	{
		return "W";
	}
	if( keyboard_check_direct( ord("A") ))
	{
		return "A";
	}
	if( keyboard_check_direct( ord("S") ))
	{
		return "S";
	}
	if( keyboard_check_direct( ord("D") ))
	{
		return "D";
	}
	
}


