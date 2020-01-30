if mouse_x > x - sprite_width/2 and mouse_x < x + sprite_width/2
and mouse_y > y - sprite_height/2 and mouse_y < y + sprite_height/2 {
	global.NUM_BLOCS_PATH -= 10;
	if (global.NUM_BLOCS_PATH < 10)
		global.NUM_BLOCS_PATH = 10;
}