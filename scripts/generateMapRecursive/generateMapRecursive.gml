///@description generate dynamic map on the fly with recursive algorithm
print("Initializing map generation...");


///@param pathLength (number of blocs of the path)
var pathLength = argument0;
printVar("pathLength is", pathLength);

///@param pathStartPos (array with relative posX and posY)
var pathStartPos = argument1;
printVar("pathStartPos", pathStartPos);

///@param pathEndPos (array with relative posX and posY)
var PathEndPos = argument2;
printVar("pathEndPos", PathEndPos);

///@param modifiersChance (real between 0 and 1)
var ModifiersChance = argument3;
if ModifiersChance < 0 or ModifiersChance > 1 
	exception("modifiersChance should have a value between 0 and 1, and it's equal to " + string(ModifiersChance));
printVar("modifiersChance", ModifiersChance);


///@return map (oData)
var map = instance_create_layer(0, room_height, "Instances", oData);
with map {
	var startTime = current_time;
	print("Start time is " + string(startTime));
		
	// initial position of the pointer (scalated and relative to map object position)
	var px = pathStartPos[0]; 
	var py = pathStartPos[1];
	print("Path start pos is (" + string(px) + ", " + string(py) + ")");

	// put player and safe bloc
	putObj(oPlayer, px, py + 2);
	safeBloc = putObj(oBloc, px, py);
	safeBloc.posX = px;
	safeBloc.posY = py;

	
	// build path
	modifiersChance = ModifiersChance;
	pathEndPos = PathEndPos;
	totalIterations = 0;						// count of total calls to buildPathRecursive
	rebuild = true;					
	while rebuild {
		rebuild = false;						// to know if we have to rebuild path or not
		iterations = 0;							// for checking when we have to reset path
		numBlocsPath = 0;						// path starts with 0 blocs
		path = pointer_null;					// array that stores pointers to the blocs of the path
		path[pathLength - 1] = pointer_null;	// initialize the array of blocs
		
		// path starting position
		var possiblePositions = getNextStepPossiblePositions(safeBloc);
		possiblePositions = applyDisorderToArray2D(possiblePositions);
		px = possiblePositions[0, 0];
		py = possiblePositions[0, 1];
		print("First bloc pos is (" + string(px) + ", " + string(py) + ")");
	
		// put first bloc of the path
		putBlocInPath(px, py);
	
		// put other blocs of the path with recursive algorithm
		buildPathRecursive();
			
		if rebuild {
			print("Destroying path...");
			destroyPath();
		} else if pathEndPos != pointer_null {
			// if path it's valid, paint blue bloc objective
			path[numBlocsPath-1].sprite_index = sBlocBlue;
		}
	}
	
	var endTime = current_time;
	print("Total time for generateMapRecursive = " + string(endTime - startTime) + "ms");
}
return map;