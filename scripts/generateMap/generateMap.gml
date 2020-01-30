random_set_seed(global.SEED);

room_width = global.MAP_WIDTH * global.SCALE;
room_height = global.MAP_HEIGHT * global.SCALE;

var numBlocsPath = global.NUM_BLOCS_LEVEL*global.SEED + global.INITIAL_NUM_BLOCS_PATH;

var map = generateMapRecursive(
	numBlocsPath, 
	global.PATH_START_POS, 
	global.PATH_END_POS, 
	global.PATH_MODIFIER_CHANCE
);
return map;