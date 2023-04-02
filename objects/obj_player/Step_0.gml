/// @description Insert description here
// You can write your code in this editor
key_press = scr_keyboard_check();

show_debug_message(key_press);

//moviments = [];

//moviments["up"];
//moviments["left"][0]= -1;
//moviments["down"][0]= 1;
//moviments["right"][0]= -1;
mystruct =
{
    "up" : -1,
    "left" : -1,
	"down" : 1,
    "right" : 1,
	"up_right" : 1,
	"up_left" : 1,
	"down_left" : 1,
};

show_debug_message(variable_struct_get(mystruct,up) * vel);

switch(key_press)
{
	case "up":
		y+= variable_struct_get(mystruct,up) * vel;
	break;
	
	case "down":
		y+= vel
	break; 
	case "left":
		x-= vel
	break; 
	case "right":
		x+= vel
	break; 
	
	case "up | left":
		y-= vel;
		x-= vel;
	break; 
	
	case "up | right":
	
		y-= vel;
		x+= vel;
	break; 
	
	case "down | left":
	
		y+= vel;
		x-= vel;
	break; 
	
	case "down | right":
	
		y+= vel;
		x+= vel;
	break; 
	
}