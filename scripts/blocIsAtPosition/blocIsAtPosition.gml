///@param bloc
var bloc = argument0;

///@param relPosX
var px = argument1;

///@param relPosY
var py = argument2;

if (bloc.posX > px - global.X_DISTANCE_BETWEEN_BLOCS and bloc.posX < px + global.X_DISTANCE_BETWEEN_BLOCS 
and bloc.posY > py - global.Y_DISTANCE_BETWEEN_BLOCS and bloc.posY < py + global.Y_DISTANCE_BETWEEN_BLOCS) {
	return true;	// the bloc is near the objective position
}
return false;		// the bloc it's not near the objective position