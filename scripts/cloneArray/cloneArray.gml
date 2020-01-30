///@param array
var array = argument0;

///@return arrayClone
var arrayClone;

for (var i = 0; i < array_length_1d(array); i++) {
	arrayClone[i] = array[i];	
}
return arrayClone;