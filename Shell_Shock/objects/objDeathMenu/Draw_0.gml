//set up
draw_set_font(fontPocketPixel);
draw_set_color(c_black);
draw_set_halign(fa_center);

//draw menu buttons
draw_sprite(retryButton, 0, room_width/2, 400);
draw_text(room_width/2, 400 - textCenter, "Retry");
draw_sprite(mainMenuButton, 0, room_width/2, 500);
draw_text(room_width/2, 500 - textCenter, "Main Menu");
draw_sprite(quitButton, 0, room_width/2, 600);
draw_text(room_width/2, 600 - textCenter, "Quit");

//selected sprites
//start button
if buttonSelected == 1 {
	retryButton = sprButtonSelected;
} else {
	retryButton = sprButton;
}

//settings button
if buttonSelected == 2 {
	mainMenuButton = sprButtonSelected;
} else {
	mainMenuButton = sprButton;
}

//quit button
if buttonSelected == 3 {
	quitButton = sprButtonSelected;
} else {
	quitButton = sprButton;
}

//death message
draw_set_color(c_white);
draw_text(room_width/2, 300, deathMessage);