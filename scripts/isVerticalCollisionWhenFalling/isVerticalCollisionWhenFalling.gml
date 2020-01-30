///@return boolean
var verticalCollisionWhenFalling = false;
if speedY > 0 and place_meeting(x, y + speedY, oSolid) {
	verticalCollisionWhenFalling = true;	
}
return verticalCollisionWhenFalling;