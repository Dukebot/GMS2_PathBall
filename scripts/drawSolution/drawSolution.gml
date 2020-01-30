with map {
	for (var i = 0; i < array_length_1d(path); i++) {
		if instance_exists(path[i]) {
			draw_text_transformed(
				path[i].x, 
				path[i].y, 
				string(i+1),
				4, 4, 0	
			);
		}
	}
}
