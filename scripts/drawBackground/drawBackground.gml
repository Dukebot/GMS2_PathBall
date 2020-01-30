// First we calculate some offsets for the background with the mouse as focus point
offsetX = (1-mouse_x / room_width-0.5) * room_width*2;
offsetY = (1-mouse_y / room_height) * room_height/2;

// Set the y-positions for the horizon and ground using those offsets
horizonY = room_height/4 + 2*offsetY;
groundY = room_height+offsetY;

// Do the same for X for each corner
horizonX1 = 0;
horizonX2 = room_width;
groundX1 = offsetX - room_width;
groundX2 = offsetX + 2*room_width

// Draw background sprite streched to those 4 points
draw_sprite_pos(sBackground, horizonX1, horizonY, horizonX2, 
	horizonY, groundX2, groundY, groundX1, groundY, c_white, 1);