///@param possibilities
var possibilities = argument0;

///@param pathEndPos
var pathEndPos = argument1;

var endPX = pathEndPos[0];
var endPY = pathEndPos[1];

for (var i = 0; i < array_height_2d(possibilities) - 1; i++) {
	for (var j = 1; j < array_height_2d(possibilities); j++) {
		
		var px1 = possibilities[i, 0];
		var py1 = possibilities[i, 1];
	
		var px2 = possibilities[j, 0];
		var py2 = possibilities[j, 1];

		var distanceP1 = point_distance(px1, py1, endPX, endPY);
		var distanceP2 = point_distance(px2, py2, endPX, endPY);
		
		if distanceP2 < distanceP1 {
			var auxPX = px1;
			var auxPY = py1;
			
			possibilities[i, 0] = px2;
			possibilities[i, 1] = py2;
			
			possibilities[j, 0] = px1;
			possibilities[j, 1] = py1;
		}
	}
}

return possibilities;