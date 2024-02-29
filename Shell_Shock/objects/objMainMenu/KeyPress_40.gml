//select menu button below
if(!keyboard_check(vk_shift)){
	if buttonSelected < totalButtons {
		buttonSelected += 1;
	} else {
		buttonSelected = 1;
	}
}