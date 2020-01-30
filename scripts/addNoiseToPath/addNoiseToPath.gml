///@param path
var path = argument0;

///@param noiseAmount
var nouseAmount = argument1;

for (var i = 0; i < array_length_1d(path); i++) {
	path[i].x += random_range(-nouseAmount, nouseAmount);
	path[i].y += random_range(-nouseAmount, nouseAmount);
}