/// @description Insert description here
// You can write your code in this editor

if(Moving){
	y = y + 5
	yMove -= 5
	if(yMove == 0){
		Moving = false
		alarm[0] = 120
		alarm[1] = 60
	}
}	