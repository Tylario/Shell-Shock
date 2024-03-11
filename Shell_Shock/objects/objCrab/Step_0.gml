moving = false

// Movement left
if !dancing && keyboard_check(vk_left) && (!instance_place(x - hsp, y, objGround) && !instance_place(x - hsp, y, objUmbrellaDynamic)) {
    moving = true;
    if(image_xscale > 0){
        image_xscale = -image_xscale;
    }
    // Adjust left movement speed if in sandpit
    if (isInSandpit) {
        x -= 0.5 * hsp;
    } else {
        x -= hsp;
    }
} else {
	if(!keyboard_check(vk_right))
	{
		image_index = sprCrebIdle;
	}
}

// Movement right
if !dancing && keyboard_check(vk_right) && (!instance_place(x + hsp, y, objGround) && !instance_place(x + hsp, y, objUmbrellaDynamic)) {
    moving = !moving; // Simplifies the toggle logic for moving
	
	sprite_index = sprCrebWalkNeo;
	
    if(image_xscale < 0){
        image_xscale = -image_xscale;
    }
    // Adjust right movement speed if in sandpit
    if (isInSandpit) {
        x += 0.5 * hsp;
    } else {
        x += hsp;
    }
} else {
	if(!keyboard_check(vk_left))
	{
		image_index = sprCrebIdle;
	}
}

// Dancing
if keyboard_check(vk_down) && instance_place(x, y + 1, objGround){
    sprite_index = sprCrebDance;
    dancing = true;
} else {
    dancing = false;
}

// Jumping - Disable if isInSandpit is true
if !dancing && keyboard_check(vk_up) && !isInSandpit {
    if instance_place(x, y + 1, objGround){
        vspeed = -vsp;
    }
}

// Gravity
if instance_place(x, y + 1, objGround) {
    gravity = 0;
} else if !dancing {
    gravity = 0.25;
    moving = false;
}

// Sprite animation while moving
/*if (moving) {
    image_index = floor(frame);
    frame = frame + 0.2;
    if frame > 4.8 {
        frame = 1;
    }
} else {
    image_index = 1;
}*/

if (dancing) {
    image_index = floor(frame);
    frame = frame + 0.2;
    if frame > 4.8 {
        frame = 1;
    }
} else {
    sprite_index = sprCrebWalkNeo;
}
