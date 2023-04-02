
function scr_typewriter_text(x,y,text,width,color)
{
	var text_limit = string_length(text);
	
	var text_copy = string_copy(text,1,type_writer_count);
	
    scr_show_text_ext(x,y,text_copy,color,width);
	
	if (type_writer_count < text_limit)
	{
	    type_writer_count += .2;
	}

	if(keyboard_check_pressed(vk_space))
	{
		type_writer_count = text_limit;
	}
}


function scr_show_text_ext(x,y,text,color,width)
{
    draw_set_color(color);
	var sep = string_height(text);
	draw_text_ext(x,y,text,sep,width);
	draw_set_color(-1);
}

function scr_show_text(x,y,text,color)
{
    draw_set_color(color);
	draw_text(x,y,text)
	draw_set_color(-1);
}