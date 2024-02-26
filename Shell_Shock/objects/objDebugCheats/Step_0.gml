//skip to sandcastle level
if keyboard_check(vk_backspace) {
	room_goto(roomTest2);
}

//test fullscreen
window_set_fullscreen(false);

//restart room
if keyboard_check(ord("R")) {
	room_restart();
}

//quit
if keyboard_check(vk_escape) {
	game_end();
}