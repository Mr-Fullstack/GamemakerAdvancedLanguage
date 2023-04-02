if( father == noone )
{

	  var child = instance_create_layer(x+sprite_width+10, y ,"Instances", obj_parent);
	  child.father = self;
	  child.children = 10; 
	  image_blend = c_green;
}

else
{
	if( children > 0 )
	{
		var child = instance_create_layer( x + sprite_width + 10 , y , "Instances", obj_parent);
		child.father = father;
		child.children = children - 1;
		child.image_blend = c_blue;
		self.image_blend = c_blue;
	}
	else
	{
	    father.image_blend = c_white;
		
		var child = instance_create_layer(x, y + sprite_height + 10 ,"Instances", obj_parent);
		child.father = self;
		child.children = 10; 
		image_blend = c_green;
	}
}
	
