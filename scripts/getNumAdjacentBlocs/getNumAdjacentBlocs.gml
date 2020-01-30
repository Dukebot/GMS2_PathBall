///@param px
var px = argument0;

///@param py
var py = argument1;

///@return numAdjacentBlocs
var adjacentBlocs = 0;


// we need to put a bloc at given position to check collisions
var bloc = putObj(oBloc, px, py);

// distances between blocs
var distanceX = global.X_DISTANCE_BETWEEN_BLOCS;
var distanceY = global.Y_DISTANCE_BETWEEN_BLOCS;


// check if there is a bloc at top right
var nextPX = px + distanceX;
var nextPY = py + distanceY;

if nextPX > 0 and nextPX < room_width/global.SCALE 
and nextPY > 0 and nextPY < room_height/global.SCALE {
	with bloc {
		var blocHit = instancePlace(oBloc, distanceX, distanceY); 
		if blocHit != noone {
			adjacentBlocs++;
		}
	}
}


// check if we can put bloc at top left
var nextPX = px - distanceX;
var nextPY = py + distanceY;

if nextPX > 0 and nextPX < room_width/global.SCALE 
and nextPY > 0 and nextPY < room_height/global.SCALE {
	with bloc {
		var blocHit = instancePlace(oBloc, -distanceX, distanceY); 
		if blocHit != noone {
			adjacentBlocs++;
		}
	}
}


// check if we can put bloc at bottom right
var nextPX = px + distanceX;
var nextPY = py - distanceY;

if nextPX > 0 and nextPX < room_width/global.SCALE 
and nextPY > 0 and nextPY < room_height/global.SCALE {
	with bloc {
		var blocHit = instancePlace(oBloc, distanceX, -distanceY); 
		if blocHit != noone {
			adjacentBlocs++;
		}
	}
}


// check if we can put bloc at bottom left
var nextPX = px - distanceX;
var nextPY = py - distanceY;

if nextPX > 0 and nextPX < room_width/global.SCALE 
and nextPY > 0 and nextPY < room_height/global.SCALE {
	with bloc {
		var blocHit = instancePlace(oBloc, -distanceX, -distanceY); 
		if blocHit != noone {
			adjacentBlocs++;
		}
	}
}

// destroy bloc created to check collisions
instance_destroy(bloc);

return adjacentBlocs;