if (global.gameDebug = true)
{
	keyUp = keyboard_check_pressed(vk_up);
	keyDown = keyboard_check_pressed(vk_down);
	debugOptionSelected += (keyDown - keyUp);
	if (debugOptionSelected >= array_length(debugOption)) debugOptionSelected = 0;
	if (debugOptionSelected < 0) debugOptionSelected = array_length(debugOption) -1;
	
	keyActivate = keyboard_check_pressed(vk_space);
	if (keyActivate)
	{
		switch (debugOptionSelected)
		{
			case 0: //volta pro normal
			{
				global.gameDebug = false;
			}break;
			case 1: //Colisao Ativa
			{
				layer_set_visible("Colisao",true);
			}break;
			case 2: //colisao Desativada
			{
				layer_set_visible("Colisao",false);
			}break;
			case 3: //colisao objetos ativada
			{
				global.raio = true;
			}break;
			case 4: //colisao desativada
			{
				global.raio = false;
			}break;
		}
	}
}