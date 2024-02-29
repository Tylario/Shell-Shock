//select menu button above
if(!keyboard_check(vk_shift)){
	if buttonSelected > 1 {
		buttonSelected -= 1;
	} else {
		buttonSelected = totalButtons;
	}
}