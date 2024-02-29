if (keyboard_check(select))
{
     show_debug_message(buttonSelected);
}

//start button
if buttonSelected == 1 {
	if keyboard_check(select) {
		room_goto(Level1); //GOTO STARTING ROOM
		show_debug_message("retry");
	}
}

//settings button
if buttonSelected == 2 {
	if keyboard_check(select) {
		room_goto(roomStartMenu);
		show_debug_message("start menu");
		
	}
}

//quit button
if buttonSelected == 3 {
	if keyboard_check(select) {
		game_end();
	}
}
