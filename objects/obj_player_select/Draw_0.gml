
draw_self();

if(selected)
{
	show_debug_message(x);
	show_debug_message(y);
	draw_set_color(c_red);
	draw_rectangle(x - ( sprite_width / 2 ) ,y,x+( sprite_width / 2 ) ,y-sprite_height,true);
	draw_set_color(-1);
}