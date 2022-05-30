//Inputs
keyLeft = keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"));
keyRight = keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"));
keyActivate = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter);

//
op_lenght = array_length(option[menu_level]);
//Mover pela setinhas
pos += keyRight - keyLeft;
if pos >= op_lenght {pos = 0};
if pos < 0 {pos = op_lenght-1};

//usar 
if keyActivate 
{	
	var _sml = menu_level;
	switch(menu_level)
	{
		case 0:
				switch(pos)
				{
					//Novo Jogo
					case 0: menu_level = 1; break;
					//Continuar
					case 1: break;
					//Configuração
					case 2: break;
					//Sair do Jogo
					case 3: game_end() break;
				}
		break;
		
		case 1:
				switch(pos)
				{
					//Novo Personagem
					case 0: room_goto(StartCriandoPersonagem) break;
					//Preset de Personagem
					case 1: break;
					//Personagem Aleatorio
					case 2: break;
					//Voltar
					case 3: menu_level = 0; break;
				}
	}
	
	if _sml != menu_level {pos = 0} 
	
	op_lenght = array_length(option[menu_level]);
}