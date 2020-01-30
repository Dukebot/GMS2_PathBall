///@param object
var obj = argument0;

///@param relativePosX
var relPosX = argument1;

///@param relativePosY
var relPosY = argument2;

var posX = x + relPosX*global.SCALE;
var posY = y - relPosY*global.SCALE;

///@return instanceID is collision happened or noone if no collision
return instance_place(posX, posY, obj);