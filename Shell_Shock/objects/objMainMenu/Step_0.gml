

// Define a flag variable
var canChangeRoom = true;

//start button
if buttonSelected == 1 {
    if keyboard_check_pressed(select) && canChangeRoom {
        canChangeRoom = false; // Set the flag to false to prevent spamming
        room_goto(startRoom); //GOTO STARTING ROOM
    }
}

//settings button
if buttonSelected == 2 {
    if keyboard_check_pressed(select) && canChangeRoom {
        canChangeRoom = false; // Set the flag to false to prevent spamming
        room_goto(roomSettingsMenu);
    }
}

//quit button
if buttonSelected == 3 {
    if keyboard_check_pressed(select) && canChangeRoom {
        canChangeRoom = false; // Set the flag to false to prevent spamming
        game_end();
    }
}

// Reset the flag after a certain delay or condition
// For example, you can use a timer or check if the player is no longer pressing the key
if (!keyboard_check(select)) {
    canChangeRoom = true; // Reset the flag
}
