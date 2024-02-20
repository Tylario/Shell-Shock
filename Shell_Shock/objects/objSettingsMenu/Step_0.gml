if (toggle_cooldown > 0) {
    toggle_cooldown -= 1;
}

if (buttonSelected == 1) {
    if (keyboard_check_pressed(vk_enter) && toggle_cooldown <= 0) {
        // Toggle mute
        global.music_on = !global.music_on;
        toggle_cooldown = 15; // Set cooldown timer to 15 steps (~0.25 seconds if running at 60 fps)
    }
}

if (buttonSelected == 2) {
    if (keyboard_check_pressed(vk_enter) && toggle_cooldown <= 0) {
        // Back
        room_goto(roomStartMenu);
    }

}