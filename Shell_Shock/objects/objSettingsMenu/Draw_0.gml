//font
draw_set_font(fontPocketPixel);
draw_set_color(c_black);
draw_set_halign(fa_center);

//draw menu buttons
draw_sprite(toggleMuteButton, 0, room_width/2, 450);
draw_text(room_width/2, 450 - textCenter, "Toggle Mute");
draw_sprite(backButton, 0, room_width/2, 550);
draw_text(room_width/2, 550 - textCenter, "Back");

//selected sprites
//start button
if buttonSelected == 1 {
	toggleMuteButton = sprButtonSelected;

} else {
	toggleMuteButton = sprButton;
}

//quit button
if buttonSelected ==2 {
	backButton = sprButtonSelected;
} else {
	backButton = sprButton;
}
