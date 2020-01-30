///@description put object at given relative position

///@param object
var obj = argument0;

///@param relativePosX
var relPosX = argument1;

///@param relativePosY
var relPosY = argument2;

// convert relative position to absolute position in pixels
var posX = x + relPosX * global.SCALE;
var posY = y - relPosY * global.SCALE;

//show_debug_message("Putting object at position (" + string(posX) + ", " + string(posY) + ")");

///@return pointerToObjectInstanciated
return instance_create_layer(posX, posY, "Instances", obj);
