//Criando a Inspeção de item apertando L

if (instance_exists(oInventoryGui)) && (!instance_exists(oLookItem)) && global.isEmpty = false
	{
		instance_create_depth(ui_width2,ui_height2,-100,oLookItem);
		
	}
else 
	{
		instance_destroy(oLookItem);
	}
