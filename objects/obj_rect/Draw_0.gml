
draw_self();
draw_text(x - sprite_width/2 +5 , y - sprite_width/2 + 10,"Eixo X:"+ string(x));
draw_text(x - sprite_width/2 + 5, y,"Eixo Y:"+ string(y));

draw_text(mouse_x, mouse_y-10,"Eixo X:"+ string(mouse_x));
draw_text(mouse_x, mouse_y+10,"Eixo Y:"+ string(mouse_y));