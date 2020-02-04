print("\n\n\nInitializating game...");
print("Global variables are:");

ini_open("GameSettings.ini");

// GAME
global.PAUSE = false;
print("PAUSE = " + string(global.PAUSE));

global.GRAVITY = 0.3;
print("GRAVITY = " + string(global.GRAVITY));

global.BACKGROUND_MUSIC = false;
print("BACKGROUND_MUSIC = " + string(global.BACKGROUND_MUSIC));


// PLAYER
global.PLAYER_MAX_MOVEMENT_SPEED = 4;
print("PLAYER_MAX_MOVEMENT_SPEED = " + string(global.PLAYER_MAX_MOVEMENT_SPEED));

global.PLAYER_JUMP_SPEED_BASE = 11;
print("PLAYER_JUMP_SPEED_BASE = " + string(global.PLAYER_JUMP_SPEED_BASE));

global.PLAYER_ACCELERATION_X = 0.5;
print("PLAYER_ACCELERATION_X = " + string(global.PLAYER_ACCELERATION_X));

global.PLAYER_FRICTION_X = 0.2;
print("PLAYER_FRICTION_X = " + string(global.PLAYER_FRICTION_X));


// MAP
global.SCALE = 64; //pixels
print("SCALE = " + string(global.SCALE));

global.X_DISTANCE_BETWEEN_BLOCS = 2.5; //with scale
print("X_DISTANCE_BETWEEN_BLOCS = " + string(global.X_DISTANCE_BETWEEN_BLOCS));

global.Y_DISTANCE_BETWEEN_BLOCS = 2.5; //with scale
print("Y_DISTANCE_BETWEEN_BLOCS = " + string(global.Y_DISTANCE_BETWEEN_BLOCS));

global.MAP_WIDTH = 50; // 30 = room_width
print("MAP_WIDTH = " + string(global.MAP_WIDTH));

global.MAP_HEIGHT = 10000; //640.000 pixels
print("MAP_HEIGHT = " + string(global.MAP_HEIGHT));


// PATH CONFIGURATION
global.SEED = ini_read_real("game", "lastPlayedSeed", 1);
print("SEED = " + string(global.SEED));

global.NUM_BLOCS_LEVEL = 2;
print("NUM_BLOCS_LEVEL = " + string(global.NUM_BLOCS_LEVEL));

global.INITIAL_NUM_BLOCS_PATH = 0;
print("INITIAL_NUM_BLOCS_PATH = " + string(global.INITIAL_NUM_BLOCS_PATH));

//global.PATH_START_POS = createArray(2, 2);
global.PATH_START_POS = createArray(global.MAP_WIDTH/2, 2);
print("PATH_START_POS = " + string(global.PATH_START_POS));

global.PATH_END_POS = pointer_null;
print("PATH_END_POS = " + string(global.PATH_END_POS));

global.PATH_MODIFIER_CHANCE = 0.25;
print("PATH_MODIFIER_CHANCE = " + string(global.PATH_MODIFIER_CHANCE));

global.PATH_MARGIN_X = 5;
print("PATH_MARGIN_X = " + string(global.PATH_MARGIN_X));

ini_close();

if os_type == os_android {
	if not achievement_login_status() achievement_login();
}