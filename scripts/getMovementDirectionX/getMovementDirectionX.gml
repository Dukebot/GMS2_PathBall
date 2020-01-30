///@return movementDirectionX
var movementDirectionX = keyboard_check(vk_right) - keyboard_check(vk_left);
if os_type == os_android and instance_exists(oInput) {
	movementDirectionX = oInput.playerDirectionX;
}
return movementDirectionX;