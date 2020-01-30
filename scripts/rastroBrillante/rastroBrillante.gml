var amount = 1;
var variation = 3;
var size = 1;
var color = c_red;

for (var i = 0; i < amount; i++) {
	var variationX = random_range(-variation, variation);
	var variationY = random_range(-variation, variation);

	effect_create_above(ef_spark, x+variationX, y+variationY, size, color);
}
