///@description adds a new row to the matrix

///@param matrix
var matrix = argument[0];

var iRow = array_height_2d(matrix);
if iRow == 0 {
	exception("When modifying array2D by reference, it should be initialized");
}

///@param content (multiple parameter)
for (var iArgument = 1; iArgument < argument_count; iArgument++) {
	var content = argument[iArgument];
	
	var iColumn = iArgument - 1;
	matrix[@ iRow, iColumn] = content;
}