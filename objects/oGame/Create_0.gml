//Update last played seed
ini_open("GameSettings.ini");
ini_write_real("game", "lastPlayedSeed", global.SEED);
ini_close();
	
global.PAUSE = false;

DrawSolution = false;
gameWin = false;
gameOver = false;

instance_create_layer(0, 0, "Interface", oPauseButton);
instance_create_layer(0, 0, "Instances", oInput);
instance_create_layer(0, 0, "Instances", oErrorChecker);

map = generateMap();
//addNoiseToPath(map.path, 30);
activeBlocs = countActiveBlocs();

//Set background initial position
layer_y("Background_1", room_height - 400);
layer_y("Background_2", room_height - 200);
layer_y("Background_3", room_height - 600);

//now it's on roomMenu in it's creation code
//playBackgroundMusic();