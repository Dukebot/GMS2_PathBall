///@param array2D
var array2D = argument0;

///@return disorderedArray2D
var disorderedArray2D = pointer_null;


var height = array_height_2d(array2D);

for (var i = 0; i < height; i++) {
	disorderedArray2D[i, 0] = -1;
	disorderedArray2D[i, 1] = -1;
}

for (var i = 0; i < height; i++) {
	var randomPos = round( random(height - 1) );
	
	if disorderedArray2D[randomPos, 0] == -1 and disorderedArray2D[randomPos, 0] == -1 {
		disorderedArray2D[randomPos, 0] = array2D[i, 0];
		disorderedArray2D[randomPos, 1] = array2D[i, 1];
		array2D[i, 0] = -1;
		array2D[i, 1] = -1;
	} 
	else {
		for (var j = randomPos + 1; j < height; j++) {
			if disorderedArray2D[j, 0] == -1 and disorderedArray2D[j, 1] == -1 {
				disorderedArray2D[j, 0] = array2D[i, 0];
				disorderedArray2D[j, 1] = array2D[i, 1];
				array2D[i, 0] = -1;
				array2D[i, 1] = -1;
				break;
			}
		}
		if array2D[i, 0] != -1 and array2D[i, 1] != -1 {
			for (var j = 0; j < randomPos; j++) {
				if disorderedArray2D[j, 0] == -1 and disorderedArray2D[j, 1] == -1 {
					disorderedArray2D[j, 0] = array2D[i, 0];
					disorderedArray2D[j, 1] = array2D[i, 1];
					array2D[i, 0] = -1;
					array2D[i, 1] = -1;
					break;
				}
			}
		}
	}
}

// check for errors
for (var i = 0; i < array_height_2d(disorderedArray2D); i++) {
	if disorderedArray2D[i, 0] == -1 or disorderedArray2D[i, 1] == -1 {
		exception("Error at disorder array -> " + string(disorderedArray2D));
	}
}

return disorderedArray2D;