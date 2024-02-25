moving = false

//movement
if keyboard_check(vk_left) && (!instance_place(x - hsp, y, objGround) && !instance_place(x - hsp, y, objUmbrellaStatic)) {
	moving = true
	if(image_xscale > 0){
		image_xscale = -image_xscale
	}
	x -= hsp;
}else{
	image_index = Creb
}

if keyboard_check(vk_right) && (!instance_place(x + hsp, y, objGround) && !instance_place(x + hsp, y, objUmbrellaStatic)) {
	
	if moving
		moving = false
	else
		moving = true
		
	sprite_index = CrebWalk
	if(image_xscale < 0){
		image_xscale = -image_xscale
	}
	x += hsp;
} else{
	image_index = Creb
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
		moving = false;
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
	