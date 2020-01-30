for (var i = 0; i < array_length_1d(path); i++) {
	if path[i] != pointer_null { 
		instance_destroy(path[i]);
	}
}