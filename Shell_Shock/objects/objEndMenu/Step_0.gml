up_key = keyboard_check_pressed(vk_up)
down_key = keyboard_check_pressed(vk_down)
accept_key = keyboard_check_pressed(vk_space)

//store number of options in current menu
op_length = 2

//move through the menu
pos += down_key - up_key;
if pos >= op_length {pos = 0}
if pos < 0 {pos = op_length -1}


//using the options
if accept_key
{
	switch(pos)
	{
		//start of the game
		case 0:
		room_goto(roomTestLevel); break;
		//quiting the game
		case 1:
		game_end();  break;						
	}
	//Correct option length
	op_length = 2
}



