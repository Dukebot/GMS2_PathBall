// Bounce when we collide with solid object from above
audio_play_sound(sndBounce, 0, false);
speedY = -jumpSpeedY;
		
// if we hit on a bloc
if place_meeting(x, y + 1, oBloc) {
	var blocHit = instance_place(x, y + 1, oBloc);
		
	// if it's not indestructible bloc
	if blocHit.sprite_index != sBlocSafe {
		instance_deactivate_object(blocHit);
		instance_deactivate_object(oGame.map.safeBloc);

		// collisions with special blocs
		if blocHit.sprite_index = sBlocHigh {
			speedY = -1.6*jumpSpeedY;
		}
		if blocHit.sprite_index = sBlocLow {
			speedY = -0.5*jumpSpeedY;
		}
	}
}