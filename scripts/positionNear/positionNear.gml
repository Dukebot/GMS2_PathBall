///@param px
var px = argument0;

///@param py
var py = argument1;

///@param pObjectiveX
var pObjectiveX = argument2;

///@param pObjectiveY
var pObjectiveY = argument3;
	
if px > pObjectiveX - global.X_DISTANCE_BETWEEN_BLOCS and px < pObjectiveX + global.X_DISTANCE_BETWEEN_BLOCS
and py > pObjectiveY - global.Y_DISTANCE_BETWEEN_BLOCS and py < pObjectiveY + global.Y_DISTANCE_BETWEEN_BLOCS {
	return true;
}
return false;