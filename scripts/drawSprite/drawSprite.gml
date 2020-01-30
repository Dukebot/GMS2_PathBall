///@param sprite
var sprite = argument[0];

///@param posX
var posX = argument[1];

///@param posY
var posY = argument[2];

///@param scaleX
var scaleX = argument[3];

///@param scaleY
var scaleY = argument[4];

draw_sprite_ext(
	sprite, 0, 
	posX, posY,
	scaleX, scaleY, 0, 
	c_white, 1
);