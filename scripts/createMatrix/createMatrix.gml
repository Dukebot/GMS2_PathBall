///@description creates a new matrix where each array represents one row

///@return matrix
var matrix;

var numArrays = argument_count;
for (var i = 0; i < numArrays; i++) {
	
	var array = argument[i];
	for (var j = 0; j < array_length_1d(array); j++) {
		matrix[i, j] = array[j];
	}
}
return matrix;