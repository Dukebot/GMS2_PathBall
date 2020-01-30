if global.PAUSE exit;

if (y > room_height) instance_destroy();

// apply movement
x = x + speedX;
y = y + speedY;

// calculate movement for next frame

//Old movement X
//speedX = getMovementDirectionX() * maxMovementSpeedX;

//New Movement X
var movDirX = getMovementDirectionX();
//Si el jugador pulsa input aceleramos
if movDirX != 0 {
	speedX += movDirX * accelerationX;
//si no hay input, aplicamos fricción para frenar
} else {
	if speedX > 0 {
		speedX -= frictionX;
		if (speedX < 0) speedX = 0;
	} else if speedX < 0 {
		speedX += frictionX;
		if (speedX > 0) speedX = 0;
	}
}
// Limitamos los valores al max speed
if		speedX < -maxMovementSpeedX { speedX = -maxMovementSpeedX; }
else if speedX > maxMovementSpeedX	{ speedX = maxMovementSpeedX; }

//Update Speed Y
speedY += global.GRAVITY;

//check collisions for next step and update movement if collision happened
if isVerticalCollisionWhenFalling() {
	moveToCollidedObject();
	bounce();	
}

//rastroBrillante();