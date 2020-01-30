///@param array
var array = argument0;

///@param arrayContent
var arrayContent = argument1;

var index = array_length_1d(array);
if index == 0 exception("When passing array by reference it should have been initialized");

array[@ index] = arrayContent;