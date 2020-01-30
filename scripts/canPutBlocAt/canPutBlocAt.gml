///@description checks if we can put bloc at given position

///@param bloc
var bloc = argument0;

///@param nextPX
var distanceX = argument1;

///@param nextPY
var distanceY = argument2;

var nextPX = bloc.posX + distanceX;
var nextPY = bloc.posY + distanceY;

if nextPX > global.PATH_MARGIN_X and nextPX < room_width/global.SCALE - global.PATH_MARGIN_X 
and nextPY > 0 and nextPY < room_height/global.SCALE {
	with bloc {
		var blocHit = instancePlace(oBloc, distanceX, distanceY); 
		if blocHit == noone {
			// We can put bloc at this position
			return true;
		}
	}
}
// we can't put bloc at this position
return false;