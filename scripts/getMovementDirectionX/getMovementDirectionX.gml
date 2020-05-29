///@return movementDirectionX
var movementDirectionX = keyboard_check(vk_right) - keyboard_check(vk_left);

if os_type == os_android {
	movementDirectionX = 0;
	if mouse_check_button(mb_left) {
		if instance_exists(oPlayer) {
			if mouse_x > (getCameraX() + getCameraWidth()/2) {
				movementDirectionX = 1;	
			}
			if mouse_x < (getCameraX() + getCameraWidth()/2) {
				movementDirectionX = -1;	
			}
		}
	}
}

return movementDirectionX;