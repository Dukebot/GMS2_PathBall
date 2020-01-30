/// @description Create sparkle
var posX = random_range(x - sprite_width/2, x + sprite_width/2);
var posY = random_range(y - sprite_height/2, y + sprite_height/2);
effect_create_above(ef_spark, posX, posY, choose(0, 1), c_white);
alarm[0] = spawnSparkleFrames;