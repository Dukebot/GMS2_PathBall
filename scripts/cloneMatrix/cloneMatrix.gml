///@param array2D
var array2D = argument0;

///@return arrayClone
var arrayClone2D;

for (var i = 0; i < array_height_2d(array2D); i++) {
	for (var j = 0; j < array_length_2d(array2D, i); j++) {
		arrayClone2D[i, j] = array2D[i, j];	
	}
}
return arrayClone2D;