if global.fome <= ComFome
	{
		status = "Saciado";
	}

if global.fome >= ComFome and global.fome <= Faminto
	{
		status = "Com Fome";
	}

if global.fome >= Faminto
	{
		status = "Faminto";	
	}

