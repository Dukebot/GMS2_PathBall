activeBlocs = countActiveBlocs(); 

if activeBlocs == 0 and not gameWin {
	gameWin = true;
	pauseGame();
}

if not instance_exists(oPlayer) and not gameOver {
	gameOver = true;
	pauseGame();
}

//Mountains background
layer_x("Background_1", getCameraX()*0.1 - 200);
layer_x("Background_2", getCameraX()*0.2 - 200);
layer_x("Background_3", getCameraX()*0.3 - 200);

//Sky background
layer_x("Background_5", getCameraX() * 0.5);
layer_y("Background_5", getCameraY() * 0.5);