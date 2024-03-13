//test fullscreen
window_set_fullscreen(fullScreen);
/*//skip to End
if keyboard_check(vk_backspace) {
	room_goto(roomVictory);
}



//restart room
if keyboard_check(ord("R")) {
	room_restart();
}*/

//quit
if keyboard_check(vk_escape) {
	game_end();
}
