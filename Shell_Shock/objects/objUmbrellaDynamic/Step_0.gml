/// @description Insert description here
// You can write your code in this editor

if(Moving){
	y = y + 5
	yMove -= 5
	
	if(yMove == 0){
		Moving = false
		alarm[0] = trigWait * 180
		alarm[1] =  trigWait* 90
	}
	
}	