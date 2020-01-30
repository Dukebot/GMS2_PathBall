var left = x - sprite_width/2;
var right = x + sprite_width/2;
var top = y - sprite_height/2;
var bot = y + sprite_height/2;

if mouse_x > left and mouse_x < right 
and mouse_y > top and mouse_y < bot {
	game_end();
}