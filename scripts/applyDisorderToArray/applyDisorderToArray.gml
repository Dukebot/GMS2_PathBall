///@param array
var array = argument0;

///@return disorderedArray
var disorderedArray = pointer_null;


var length = array_length_1d(array);

for (var i = 0; i < length; i++) {
	disorderedArray[i] = -1;
}

for (var i = 0; i < length; i++) {
	var randomPos = round( random(length - 1) );
	
	if disorderedArray[randomPos] == -1 {
		disorderedArray[randomPos] = array[i];
		array[i] = -1;
	} 
	else {
		for (var j = randomPos + 1; j < length; j++) {
			if disorderedArray[j] == -1 {
				disorderedArray[j] = array[i];
				array[i] = -1;
				break;
			}
		}
		if array[i] != -1 {
			for (var j = 0; j < randomPos; j++) {
				if disorderedArray[j] == -1 {
					disorderedArray[j] = array[i];
					array[i] = -1;
					break;
				}
			}
		}
	}
}

// check for errors
for (var i = 0; i < array_length_1d(disorderedArray); i++) {
	if disorderedArray[i] == -1 {
		exception("Error at disorder array -> " + string(disorderedArray));
	}
}

return disorderedArray;