/// @description Insert description here
// You can write your code in this editor
if (place_free(x,y+1)){
	gravity = .5;
	friction = 0;
}
 else{
	 gravity = 0;
	 friction = .25;
 }