playerDirectionX = 0;

if mouse_check_button(mb_left) {
	if instance_exists(oPlayer) {
		if mouse_x > (getCameraX() + getCameraWidth()/2) {
			playerDirectionX = 1;	
		}
		if mouse_x < (getCameraX() + getCameraWidth()/2) {
			playerDirectionX = -1;	
		}
	}
}

/*
playerDirection = 0;
if isMouseOnSprite(oMoveLeft)  { playerDirectionX -= 1; }
if isMouseOnSprite(oMoveRight) { playerDirectionX += 1;	}
*/