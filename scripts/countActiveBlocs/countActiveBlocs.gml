///@return
var blocCount = 0;
with map {
	for (var i = 0; i < array_length_1d(path); i++) {
		if instance_exists(path[i]) {
			blocCount++;
		}
	}
}
return blocCount;