moving = false
if(keyboard_check(vk_shift)){
	

	//movement
	if !dancing && keyboard_check(vk_left) && (!instance_place(x - hsp, y, objGround) && !instance_place(x - hsp, y, objUmbrellaDynamic)) {
		moving = true
		if(image_xscale > 0){
			image_xscale = -image_xscale
		}
		x -= hsp;
	}else{
		image_index = sprCreb
	}

	if !dancing && keyboard_check(vk_right) && (!instance_place(x + hsp, y, objGround) && !instance_place(x + hsp, y, objUmbrellaDynamic)) {
	
		if moving
			moving = false
		else
			moving = true
		
		sprite_index = sprCrebWalk
		if(image_xscale < 0){
			image_xscale = -image_xscale
		}
		x += hsp;
	} else{
		image_index = sprCreb
	}
	
	if (keyboard_check(vk_down) && instance_place(x, y + 1, objGround)){
		sprite_index = sprCrebDance
		dancing = true
	} else {
		dancing = false
	}

	if !dancing && keyboard_check(vk_up) {

		if instance_place(x, y + 1, objGround){
			vspeed = -vsp;
		}
	}

	//gravity
		if instance_place(x, y + 1, objGround) {
			gravity = 0;
		} else if !dancing {
			gravity = 0.25;
			moving = false;
		}
}
	
	//sprite animation while moving
	if (moving)
	{
		image_index = floor(frame)
	
		frame = frame + 0.2
	
		if frame > 4.8
			frame = 1
	}
	else
	{
		image_index = 1
	}
	
	
	if (dancing)
	{
		image_index = floor(frame)
	
		frame = frame + 0.2
	
		if frame > 4.8
			frame = 1
	}
	else
	{
		sprite_index = sprCrebWalk
	}

	