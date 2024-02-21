//movement
if keyboard_check(vk_left) && !instance_place(x - hsp, y, objGround) {
	x -= hsp;
}

if keyboard_check(vk_right) && !instance_place(x + hsp, y, objGround) {
	x += hsp;
}

if keyboard_check(vk_up) {
	if instance_place(x, y + 1, objGround){
		vspeed = -vsp;
	}
}

//gravity
	if instance_place(x, y + 1, objGround) {
		gravity = 0;
	} else {
		gravity = 0.25;
	}
	