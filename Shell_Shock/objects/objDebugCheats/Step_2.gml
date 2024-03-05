/// @description Insert description here
// You can write your code in this editor


if(room == Level1)
{
	//Bottom Sky Layer
	layer_x("Sky1", lerp(0, camera_get_view_x(view_camera[0]), 0.2));

	
	//Top Sky Layer
	layer_x("Sky2", lerp(0, camera_get_view_x(view_camera[0]), -1));
	
	//backsand layer
	layer_x("backSand",lerp(0, camera_get_view_x(view_camera[0]),0.1));
	
	
	//This checks to see if player is moving, so clouds move more "realistically" with camera.
	//Tried to use the moving variable in the Crab object but... it does not function properly due to
	//how the variable is set up :/
	//TLDR: Code is a bit wonky in execution.
	if(objCrab.x < currenX || currenX < objCrab.x)
	{
		//Added in a set "delay" in the x part to prevent a jitter when transitioning from moving/not moving.
		
		//Cloud Layer
		layer_hspeed("Clouds", -0.1);	
		layer_hspeed("water", -0.5);
	}
	else if(!(objCrab.x < currenX|| currenX < objCrab.x))
	{
		layer_hspeed("Clouds", -0.2);	
		layer_hspeed("water", -0.1);
	}
	
	//Sun Layer	
	layer_x("Sun", camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) - 64));
	layer_y("Sun", camera_get_view_y(view_camera[0]));

}



