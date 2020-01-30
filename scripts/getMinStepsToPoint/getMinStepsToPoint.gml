///@param initialPos
var initialPos = argument0;

///@param objectivePos
var objectivePos = argument1;

var px = initialPos[0];
var py = initialPos[1];

var opx = objectivePos[0];
var opy = objectivePos[1];

var atPosition = false;
var stepsToReachPosition = 0;

// move towards position objective with the minimal steps
while not atPosition {
	stepsToReachPosition++;
	
	// check if we have to move left or right
	if px < opx
		px += global.X_DISTANCE_BETWEEN_BLOCS;
	else
		px -= global.X_DISTANCE_BETWEEN_BLOCS;
		
	// check if we have to move top or down
	if py < opy
		py += global.Y_DISTANCE_BETWEEN_BLOCS;
	else
		py -= global.Y_DISTANCE_BETWEEN_BLOCS;
		
	// check if we are near to the position objective
	if px > opx - global.X_DISTANCE_BETWEEN_BLOCS and px < opx + global.X_DISTANCE_BETWEEN_BLOCS
	and py > opy - global.Y_DISTANCE_BETWEEN_BLOCS and py < opy + global.Y_DISTANCE_BETWEEN_BLOCS {
		// exit while
		atPosition = true;
	}
}

return stepsToReachPosition;