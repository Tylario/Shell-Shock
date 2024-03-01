//skip to sandcastle level
if keyboard_check(vk_backspace) {
	room_goto(roomVictory);
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
