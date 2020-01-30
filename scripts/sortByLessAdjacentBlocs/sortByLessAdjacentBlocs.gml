///@description sorts array positions were the ones with less adjacent blocs go first

///@param possibilities
var possibilities = argument0;

///@return possibilitiesSorted
var possibilitiesSorted = pointer_null;

// get how many adjacent blocs has every possible position and store it in another column of the 2D array
for (var i = 0; i < array_height_2d(possibilities); i++) {
	var px = possibilities[i, 0];
	var py = possibilities[i, 1];
	var numAdjacentBlocs = getNumAdjacentBlocs(px, py);
	possibilities[i, 2] = numAdjacentBlocs;
}

// fill the new array with possibilities with less adjacent blocs first
for (var i = 0; i < array_height_2d(possibilities); i++) {
	var minValue = 9999;
	var minValuePos = 0;
	
	for (var j = 0; j < array_height_2d(possibilities); j++) {
		var px = possibilities[j, 0];
		var py = possibilities[j, 1];
		var numAdjacentBlocs = possibilities[j, 2];
	
		// when we process one row of the 2d array, we will set values to -1 
		// so we know that it has been processed
		if px >= 0 and py >= 0 and numAdjacentBlocs >= 0 {
			if numAdjacentBlocs < minValue {
				minValue = numAdjacentBlocs;
				minValuePos = j;
			}
		}
	}

	// set to result array the current positions with min adjacent blocs
	possibilitiesSorted[i, 0] = possibilities[minValuePos, 0];
	possibilitiesSorted[i, 1] =  possibilities[minValuePos, 1];
	
	// set values to -1 so we don't take them into account at next iteration
	possibilities[minValuePos, 0] = -1;
	possibilities[minValuePos, 1] = -1;
	possibilities[minValuePos, 2] = -1;
}

// check that we have processed all positions
/*
for (var j = 0; j < array_height_2d(possibilities); j++) {
	var px = possibilities[j, 0];
	var py = possibilities[j, 1];
	var numAdjacentBlocs = possibilities[j, 2];
	
	if px != -1 or py != -1 or numAdjacentBlocs != -1 {
		exception("Something went wrong when trying to sort possible positions by less adjacent blocs");
	}
}
*/

return possibilitiesSorted;