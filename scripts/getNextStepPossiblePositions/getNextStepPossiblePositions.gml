///@param bloc
var bloc = argument0;

///@return possibleNextSteps (2D array)
var possibleNextSteps = pointer_null;

// Normal distance between normal blocs
var distanceX = global.X_DISTANCE_BETWEEN_BLOCS;
var distanceY = global.Y_DISTANCE_BETWEEN_BLOCS;

// Green blocs make us jump higher, so we will put blocs at more height
if bloc.sprite_index == sBlocHigh {
	distanceY *= 3;
}

// with orange blocs we can't go top
if bloc.sprite_index != sBlocLow{
	
	// check if we can put bloc at top right
	if canPutBlocAt(bloc, distanceX, distanceY) {
		possibleNextSteps = addMatrixRow(possibleNextSteps, bloc.posX + distanceX, bloc.posY + distanceY);
	}

	// check if we can put bloc at top left
	if canPutBlocAt(bloc, -distanceX, distanceY) {
		possibleNextSteps = addMatrixRow(possibleNextSteps, bloc.posX - distanceX, bloc.posY + distanceY);
	}
}

// with green blocs we can't go bottom
if bloc.sprite_index != sBlocHigh {
	
	// check if we can put bloc at bottom right
	if canPutBlocAt(bloc, distanceX, -distanceY) {
		possibleNextSteps = addMatrixRow(possibleNextSteps, bloc.posX + distanceX, bloc.posY - distanceY);
	}

	// check if we can put bloc at bottom left
	if canPutBlocAt(bloc, -distanceX, -distanceY) {
		possibleNextSteps = addMatrixRow(possibleNextSteps, bloc.posX - distanceX, bloc.posY - distanceY);
	}
}
		
return possibleNextSteps;