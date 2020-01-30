if mouse_x > x - sprite_width/2 and mouse_x < x + sprite_width/2
and mouse_y > y - sprite_height/2 and mouse_y < y + sprite_height/2 {
	global.SEED -= 1;
	if (global.SEED < 1)
		global.SEED = 1;
}