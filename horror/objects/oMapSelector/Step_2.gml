	keyUp = keyboard_check_pressed(vk_up);
	keyDown = keyboard_check_pressed(vk_down);
	SeletorMapaOptionSelected += (keyDown - keyUp);
	if (SeletorMapaOptionSelected >= array_length(SeletorMapaOption)) SeletorMapaOptionSelected = 0;
	if (SeletorMapaOptionSelected < 0) SeletorMapaOptionSelected = array_length(SeletorMapaOption) -1;
	
	keyActivate = keyboard_check_pressed(vk_space);
	if (keyActivate)
	{
		switch (SeletorMapaOptionSelected)
		{
			case 0: //ir pro mapa 1
			{
				room_goto(DebugRoom)
			}break;
			case 1: //Ir pra room1
			{
				room_goto(Room1);
			}break;
		}
}
