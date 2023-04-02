function scr_nine_slice(sprite, x, y, width, height, stretched)
{

var  x_pos, y_pos, center, tile_width, tile_height;
 
 
//DRAW PANEL CORNERS
 
// Top Left
draw_sprite(sprite, 0, x, y);	
 
// Top Right
draw_sprite(sprite, 2, x + width - sprite_width, y);
 
// Bottom Left
draw_sprite(sprite, 6, x, y + height - sprite_height);
 
// Bottom Right
draw_sprite(sprite, 8, x + width - sprite_width, y + height - sprite_height);
 
draw_sprite_stretched(sprite, 1, x + sprite_width, y, width - sprite_width * 2, sprite_height);
 
//DRAW PANEL SIDES & CENTER
 
if (stretched)
{
	//Top center
	draw_sprite_stretched(sprite, 1, x + sprite_width, y, width - sprite_width * 2, sprite_height);
 
	// Middle Left
	draw_sprite_stretched(sprite, 3, x, y + sprite_height, sprite_width, height - sprite_height*2);
 
	// Middle Center
	draw_sprite_stretched(sprite, 4, x + sprite_width, y + sprite_height, width - sprite_width*2, height - sprite_height*2);
 
	// Middle Right
	draw_sprite_stretched(sprite, 5, x + width - sprite_width, y + sprite_height, sprite_width, height - sprite_height*2);
 
	//Bottom center
	draw_sprite_stretched(sprite, 7, x + sprite_width, y + height - sprite_height, width - sprite_width*2, sprite_height);
}
else
{
	// If not stretched, calculate number of sprite repetitions
	width += width mod sprite_width;
	height += height mod sprite_height;
 
	tile_width = ((width - sprite_width * 2) / sprite_width);
	tile_height = ((height - sprite_height * 2) / sprite_height);
 
	for (x_pos = 1; x_pos <= tile_width; x_pos++)
	{
		//Top Center
		draw_sprite(sprite, 1, x + (x_pos * sprite_width), y);
 
		//Middle Center
		for (y_pos = 1; y_pos <= tile_height; y_pos++)
			draw_sprite(sprite, 4, x + (x_pos * sprite_width), y + (y_pos * sprite_height)); 
 
		//Bottom Center
		draw_sprite(sprite, 7, x + (x_pos * sprite_width), y + height - sprite_height);
	}
 
	for (y_pos = 1; y_pos <= tile_height; y_pos++)
	{
		// Middle Left
		draw_sprite(sprite, 3, x, y + (y_pos * sprite_height));
 
		// Middle Right
		draw_sprite(sprite, 5, x + width - sprite_width, y + (y_pos * sprite_height));
	}
}
}


 