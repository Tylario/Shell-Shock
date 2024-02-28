//skip to sandcastle level
if keyboard_check(vk_backspace) {
	room_goto(roomTest2);
}

//test fullscreen
window_set_fullscreen(fullScreen);

//restart room
if keyboard_check(ord("R")) {
	room_restart();
}

//quit
if keyboard_check(vk_escape) {
	game_end();
}
if(room == Level1)
{
	//Bottom Sky Layer
	layer_x("Sky1", lerp(0, camera_get_view_x(view_camera[0]), 0.1));

	
	//Top Sky Layer
	layer_x("Sky2", lerp(0, camera_get_view_x(view_camera[0]), 0.3));
	
	//backsand layer
	layer_x("backSand",lerp(0, camera_get_view_x(view_camera[0]),-0.15));
	
	
	//This checks to see if player is moving, so clouds move more "realistically" with camera.
	//Tried to use the moving variable in the Crab object but... it does not function properly due to
	//how the variable is set up :/
	//TLDR: Code is a bit wonky in execution.
	if(keyboard_check(vk_left) || keyboard_check(vk_right))
	{
		//Added in a set "delay" in the x part to prevent a jitter when transitioning from moving/not moving.
		
		//Cloud Layer
		layer_hspeed("Clouds", -0.1);	
		layer_hspeed("water", -0.5);
	}
	else if(!(keyboard_check(vk_left) || keyboard_check(vk_right)))
	{
		layer_hspeed("Clouds", -0.2);	
		layer_hspeed("water", -0.1);
	}
	
	//Sun Layer	
	layer_x("Sun", camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) - 64));
	layer_y("Sun", camera_get_view_y(view_camera[0]));

}