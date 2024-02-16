//start button
if buttonSelected == 1 {
	if keyboard_check(select) {
		room_goto(roomTest2); //GOTO STARTING ROOM
	}
}

//settings button
if buttonSelected == 2 {
	if keyboard_check(select) {
		room_goto(roomStartMenu);
	}
}

//quit button
if buttonSelected == 3 {
	if keyboard_check(select) {
		game_end();
	}
}