//Inputs
keyLeft = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("A"));
keyRight = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("D"));
keyActivate = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter);

//Mover pela setinhas
if (!instance_exists(oLookItem))
	{
		pos += keyRight - keyLeft;
		if pos >= op_lenght {pos = 0};
		if pos < 0 {pos = op_lenght-1};
	}

//usar 
if keyActivate 
{	
	var _sml = global.menu_level;
	switch(global.menu_level)
	{
		case 0: //Comida
				switch(pos)
					{
							//Ingerir
							case 0: break;
							//Inspecioanr
							case 1: 
							if (instance_exists(oInventoryGui)) && (!instance_exists(oLookItem)) && global.isEmpty = false
							{					
								instance_create_depth(ui_width2,ui_height2,-100,oLookItem);
							}
							else
							{
								instance_destroy(oLookItem);
							}
							break;
							//Dropar
							case 2: 
							if global.isEmpty = false
								{
									instance_create_layer(oPersonagem.x,oPersonagem.y, "props",ds_grid_get(myItems,9,global.itemSelected));
									ds_grid_column_delete();
								}
							break;
						}
		break;
		
		case 1: //Equipamento
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
		
		case 2: //ferramnte
				switch(pos)
				{
					//arma
					case 0:  break;
					//
					case 1: //inspecionar
						if (instance_exists(oInventoryGui)) && (!instance_exists(oLookItem)) && global.isEmpty = false
							{					
								instance_create_depth(ui_width2,ui_height2,-100,oLookItem);
							}
							else
							{
								instance_destroy(oLookItem);
							}
					break;
					//
					case 2: //drop
							{
							instance_create_layer(143,1868, "props",ds_grid_get(myItems,8,global.itemSelected));
							ds_grid_column_delete();
							}
							break;
					case 3:  break;
		}
		break;
	}
	
	if _sml != global.menu_level {pos = 0} 
	
	op_lenght = array_length(MenuItem[global.menu_level]);
}

if ds_grid_value_exists(myItems, 7, global.itemSelected, 7, global.itemSelected, "CATEGORIA:COMIDA")
		{
			global.menu_level = 0; //COMIDA
		}
		else	if ds_grid_value_exists(myItems, 7, global.itemSelected, 7, global.itemSelected, "CATEGORIA:VESTIMENTAS")
		{
			global.menu_level = 1; //VESTIMENTAS
		}
		else	if ds_grid_value_exists(myItems, 7, global.itemSelected, 7, global.itemSelected, "CATEGORIA:ARMAS")
		{
			global.menu_level = 2; //ARMAS
		}




