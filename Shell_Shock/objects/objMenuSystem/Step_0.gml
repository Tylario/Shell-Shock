//get inputsup_key = keyboard_check_pressed(vk_up)
up_key = keyboard_check_pressed(vk_up)
down_key = keyboard_check_pressed(vk_down)
accept_key = keyboard_check_pressed(vk_space)

//store number of options in current menu
op_length = array_length(option[menu_level])

//move through the menu
pos += down_key - up_key;
if pos >= op_length {pos = 0}
if pos < 0 {pos = op_length -1}


//using the options
if accept_key
{
	var _sml = menu_level;
	
	switch(menu_level)
	{
		case 0:
			switch(pos)
				{
					//start of the game
					case 0:
						room_goto_next(); break;
					//settings of the game
					case 1:
						menu_level = 1; break;
					//quiting the game
					case 2:
						game_end();  break;			
				}
			break;
		
		//settings
		case 1:
			switch(pos)
				{
					//window size
					case 0:
					
						break;
					//Brightness
					case 1:
						
						break;
					
					//Controls
					case 2:
					
						break;
					//Back to main menu
					case 3:
						menu_level = 0;
						break;
				}
			break;
	}
	
	//set position back
	if _sml != menu_level {pos = 0};
	
	//Correct option length
	op_length = array_length(option[menu_level])
}
