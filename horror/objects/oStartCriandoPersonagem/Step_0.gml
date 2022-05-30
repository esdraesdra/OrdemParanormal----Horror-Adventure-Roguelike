//Inputs
keyUp = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
keyDown = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
keyActivate = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter);
keyTab = keyboard_check_pressed(vk_tab);

if keyTab
{
	character_level += 1;
	if character_level == 6
	{
		show_question("Continue to next room?")
			{
				room_goto(global.StartLocation);
			}
	}
}

op_lenght2 = array_length(tabs);
if pos2 >= op_lenght2 {pos2 = 0};
if pos2 < 0 {pos2 = op_lenght2-1};

/*
if keyboard_check_pressed(vk_tab)
{
	pos2 += 1;
	
	if pos2 == 5 and global.StartLocation = noone 
	{
		pos2 = 0;
		show_debug_message("Falta Coisa");
	}
	else if pos2 == 5
	{
		pos2 = 0;
		instance_create_layer(x,y,"Instances",oComecarJogo)
	}
}
	*/
//
op_lenght = array_length(character[character_level]);
//Mover pela setinhas
pos += keyDown - keyUp;
if pos >= op_lenght {pos = 0};
if pos < 0 {pos = op_lenght-1};

//usar 
if keyActivate 
{	
	var _sml = character_level;
	switch(character_level)
	{
		case 0: // Cenários
				switch(pos)
				{
					//Ordem
					case 0: global.StartLocation = Jungle; pos = c_green; break;
					//DebugRoom
					case 1: global.StartLocation = DebugRoom; break;
					//
					case 2: break;
					//
					case 3: game_end() break;
				}
		break;
		
		case 1: //profissoees
				switch(pos)
				{
					//
					case 0:  break;
					//
					case 1: break;
					//
					case 2: break;
					//
					case 3:  break;
				}
		break;
		
		case 2: //status
				switch(pos)
				{
					//
					case 0:  break;
					//
					case 1: break;
					//
					case 2: break;
					//
					case 3:  break;
				}
		break;
		
		case 3: //traços
				switch(pos)
				{
					//
					case 0:  break;
					//
					case 1: break;
					//
					case 2: break;
					//
					case 3:  break;
				}
		break;
				
		case 4: //habilidades
				switch(pos)
				{
					//
					case 0:  break;
					//
					case 1: break;
					//
					case 2: break;
					//
					case 3:  break;
				}
		break;
				
		case 5: //descrição
				switch(pos)
				{
					//
					case 0: break;
					//
					case 1: break;
					//
					case 2: break;
					//
					case 3:  break;
				}
		break;
		
	}
	
	if _sml != character_level {pos = 0} 
	
	op_lenght = array_length(character[character_level]);
}

pos2 += keyTab;
if pos2 >= op_lenght {pos = 0};
if pos2 < 0 {pos = op_lenght-1};
