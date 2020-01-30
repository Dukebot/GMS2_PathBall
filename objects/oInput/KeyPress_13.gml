///@description PAUSE

if oGame.gameOver {
	room_restart();
}
if oGame.gameWin {
	nextLevel();
}
if global.PAUSE { 
	unpauseGame(); 
} else { 
	pauseGame(); 
}