if (place_free(x,y+1)){
	gravity = .5;
	friction = 0;
}
 else{
	 gravity = 0;
	 friction = .25;
	 }

camera_set_view_target(0,objCrab)