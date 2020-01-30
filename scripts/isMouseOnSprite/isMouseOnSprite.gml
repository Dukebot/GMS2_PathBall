var object = pointer_null; 
if argument_count > 0
	object = argument[0];

var MouseOnSprite = false;

//Only tested when sprite origin is at center

if object != pointer_null {
	//target object
	with object {
		if mouse_x > x - sprite_width/2 and mouse_x < x + sprite_width/2
		and mouse_y > y - sprite_height/2 and mouse_y < y + sprite_height/2 {
			MouseOnSprite = true;
		}
	}
} else {
	//target self
	if mouse_x > x - sprite_width/2 and mouse_x < x + sprite_width/2
	and mouse_y > y - sprite_height/2 and mouse_y < y + sprite_height/2 {
		MouseOnSprite = true;
	}
}

return MouseOnSprite;