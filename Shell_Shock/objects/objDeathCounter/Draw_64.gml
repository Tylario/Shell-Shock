draw_set_font(fontPocketPixel);
draw_set_halign(fa_center);

if room == Level1Extended {
	draw_set_color(c_white);

	//death counter
	draw_text(20, 10, deaths);
}

else if room == roomVictory {
	//deaths
	draw_set_color(c_maroon);
	draw_text(room_width/2, 680, "Deaths: " + string(deaths));
}