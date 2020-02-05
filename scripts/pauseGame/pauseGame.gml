if (instance_exists(oNextLevelButton)
	or instance_exists(oContinueButton)
	or instance_exists(oRestartButton)
	or instance_exists(oMainMenuButton) 
) {
	exception("Trying to create pause menu buttons when they already exist");
}

oPauseButton.visible = false;
global.PAUSE = true;

var cameraCenterX = getCameraCenterX();
var cameraCenterY = getCameraCenterY();

if not oGame.gameWin and not oGame.gameOver {
	instance_create_layer(cameraCenterX, cameraCenterY - 100, "Interface", oContinueButton);	
}

if oGame.gameWin {
	instance_create_layer(cameraCenterX, cameraCenterY + 100, "Interface", oNextLevelButton);
} else { 
	instance_create_layer(cameraCenterX, cameraCenterY + 100, "Interface", oRestartButton);
}

instance_create_layer(cameraCenterX, cameraCenterY + 300, "Interface", oMainMenuButton);