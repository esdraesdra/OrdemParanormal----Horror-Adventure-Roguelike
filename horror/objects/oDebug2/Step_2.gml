if (global.gameRoomDebug = true)
{
	keyUp = keyboard_check_pressed(vk_up);
	keyDown = keyboard_check_pressed(vk_down);
	RoomdebugOptionSelected += (keyDown - keyUp);
	if (RoomdebugOptionSelected >= array_length(RoomdebugOption)) RoomdebugOptionSelected = 0;
	if (RoomdebugOptionSelected < 0) RoomdebugOptionSelected = array_length(RoomdebugOption) -1;
	
	keyActivate = keyboard_check_pressed(vk_space);
	if (keyActivate)
	{
		switch (RoomdebugOptionSelected)
		{
			case 0: //volta pro normal
			{
				global.gameRoomDebug = false;
			}break;
			case 1: //Ir pra room debug
			{
				room_goto(DebugRoom);
			}break;
			case 2: //ir pra room1
			{
				room_goto(Jungle);
			}break;
		}
	}
}