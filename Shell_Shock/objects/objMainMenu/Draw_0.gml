//font
draw_set_font(fontPocketPixel);
draw_set_color(c_black);
draw_set_halign(fa_center);

//controls
//draw_text(260, 380, "(Hold Shift to control me)")
//draw_text(260, 430, "Up Arrow is to Jump")
//draw_text(260, 480, "Left Arrow is to move left")
//draw_text(260, 530, "Right Arrow is to move right")
//draw_text(260, 580, "Down Arrow is to Dance!!")

//draw menu buttons
draw_sprite(startButton, 0, room_width/2, 400);
draw_text(room_width/2, 400 - textCenter, "Start");
draw_sprite(settingsButton, 0, room_width/2, 500);
draw_text(room_width/2, 500 - textCenter, "Settings");
draw_sprite(quitButton, 0, room_width/2, 600);
draw_text(room_width/2, 600 - textCenter, "Quit");

//selected sprites
//start button
if buttonSelected == 1 {
	startButton = sprButtonSelected;

} else {
	startButton = sprButton;
}

//settings button
if buttonSelected == 2 {
	settingsButton = sprButtonSelected;
} else {
	settingsButton = sprButton;
}

//quit button
if buttonSelected == 3 {
	quitButton = sprButtonSelected;
} else {
	quitButton = sprButton;
}

// Credits title
draw_set_color(c_maroon);
draw_text(room_width/2, 30, "Team Crabby Presents...");

// Initialize a string to hold the combined names
combinedNames = "Created by ";

// Loop through the shuffled names array to add them to the string
for (i = 0; i < array_length(names); i++) {
    combinedNames += names[i];
    
    // If this is the second-to-last name, add ", and "
    if (i == array_length(names) - 2) {
        combinedNames += ", and ";
    }
    // Otherwise, if it's not the last name, add ", "
    else if (i < array_length(names) - 1) {
        combinedNames += ", ";
    }
}

draw_text(room_width/2, 680, combinedNames);
