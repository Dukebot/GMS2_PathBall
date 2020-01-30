print("************************************************************************");
print("************************************************************************");

totalIterations++;
//printVar("totalIterations", totalIterations);
iterations++;
var callNumber = iterations;
printVar("callNumber", callNumber);

// reset if we reached max iterations for map generation
if iterations > 10000 { //Good TESTED value = 10000
	print("*****************************************************");
	print("We've reached limit of iterations, rebuilding path...");
	print("*****************************************************");
	rebuild = true;
	exit;
}

var currentBloc = path[numBlocsPath-1];
var possiblePositions = getNextStepPossiblePositions(currentBloc);
possiblePositions = applyDisorderToArray2D(possiblePositions);
// we can sort by optimal step here if we want (only for path with end pos)
printVar("possiblePositions", possiblePositions);

// OPTIMIZATION: Cut this branch if we can't reach node objective from here
if pathEndPos != pointer_null and not isReachable(pathEndPos) {
	print("OPTIMIZATION: Cutting this branch because we can't reach objective position");
	destroyBlocInPath();
	exit;
}

// iterate throught possible positions for the next bloc of the path
for (var i = 0; i < array_height_2d(possiblePositions); i++) {
	
	// position for the next node
	var px = possiblePositions[i, 0];
	var py = possiblePositions[i, 1];
	
	// OPTIMIZATION: when we have objective node
	if (pathEndPos != pointer_null) {
		
		// if we are going to place last bloc of the path
		if numBlocsPath + 1 >= array_length_1d(path) {
			
			// if it's not at the position objective, we continue trying other options
			if not positionNear(px, py, pathEndPos[0], pathEndPos[1]) {
				print("We reached path length but we did not find objective node, try next option");
				continue;
			}
		}
		// if we are not placing last bloc of the path
		else {
			// if it's position it's at the objective, we have to try other options
			if positionNear(px, py, pathEndPos[0], pathEndPos[1]) {
				print("We've find objective node before finishing the path, try next option");
				continue;
			}
		}	
	}
	
	// put next bloc of the path
	var blocSprite = sBlocNormal;
	if random(1) < modifiersChance {
		if random(1) < 0.5	{ blocSprite = sBlocHigh; }
		else				{ blocSprite = sBlocLow; }
	}
	putBlocInPath(px, py, blocSprite);
	print("We have put bloc number " + string(numBlocsPath));
	print("Put new bloc in path at " + string(px) + ", " + string(py));
	//chance of spawning item

	// if path has all blocs
	if numBlocsPath >= array_length_1d(path) {
		show_debug_message("Path Objective found, exit...");
		exit;
	}
	
	// recursive call for building next step of the path
	print("Recursive call for next step");
	buildPathRecursive();
	print("************************************************************************");
	print("We're back from recursive call at call number " + string(callNumber));
	
	// exit in chain if we have to rebuild path or path has all steps
	if rebuild or numBlocsPath >= array_length_1d(path) { exit; }
	
	// at this point, we still have not found any solution, so we continue iterating and trying to find the path desired
}

// no more paths to try, delete current bloc and go back to previous recursive call and try other options
print("No more path's to try from here, destroying current bloc...");
destroyBlocInPath();
exit;