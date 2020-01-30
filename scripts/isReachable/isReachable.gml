///@param positionObjective (relative x and y pos)
var positionObjective = argument0;

// get min steps to reach objective position
var currentBloc = path[numBlocsPath-1];
var localStartPos = createArray(currentBloc.posX, currentBloc.posY);
var stepsToPos = getMinStepsToPoint(localStartPos, positionObjective);
printVar("stepsToPos", stepsToPos);

// check if steps remaining is less than steps to objective position
var pathLength = array_length_1d(path);
var stepsRemaining = pathLength - numBlocsPath;
if stepsRemaining < stepsToPos {
	return false;
}
return true;


