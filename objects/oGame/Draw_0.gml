//Draw blocs remaining
draw_text_transformed(
	getCameraX() + 10, getCameraY() + 10, 
	"Level: " + string(global.SEED),
	2, 2, 0
);

//Draw blocs remaining
draw_text_transformed(
	getCameraX() + 10, getCameraY() + 50, 
	"Blocs Remaining: " + string(activeBlocs),
	2, 2, 0
);
	
//Draw player pos X and posY
if instance_exists(oPlayer) {
	draw_text_transformed(
		getCameraX() + 10, getCameraY() + 90, 
		"PlayerX: " + string(oPlayer.x),
		2, 2, 0
	);
	draw_text_transformed(
		getCameraX() + 10, getCameraY() + 130, 
		"PlayerY: " + string(room_height - oPlayer.y),
		2, 2, 0
	);
}

if DrawSolution { drawSolution(); } 

if gameWin {
	draw_text_transformed(
		getCameraCenterX() - 200, 
		getCameraCenterY() - 300, 
		"You Win",
		8, 8, 0
	);
}

if gameOver {
	drawSprite(sGameOver, 
		getCameraCenterX(), 
		getCameraCenterY() - 200, 
		2, 2
	);
}