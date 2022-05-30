mouseRight = mouse_check_button(mb_right);


#region //movimento e sprites

if (global.canMove == true)
{
	scrInput();
}

#region movimento

	if (direita == 1 and global.canMove == true) 
	{
		if (!collision_point(x+32,y,oColisao,0,0))
		{
			x += 32; 
			global.turn += 1;
			global.fome += 1;
			alarm_set(0,15);
			global.canMove = false;
		}
	}
	if (esquerda == 1 and global.canMove == true) 
	{
		if (!collision_point(x-32,y,oColisao,0,0))
		{ 
			x -= 32; 
			global.turn += 1;
			global.fome += 1;
			alarm_set(0,15);
			global.canMove = false;
		}
	}
	
	if (cima == 1 and global.canMove == true) 
	{
		if (!collision_point(x,y-32,oColisao,0,0))
		{ 
			y -= 32; 
			global.turn += 1;
			global.fome += 1;
			alarm_set(0,15);
			global.canMove = false;
		}
	}
	if (baixo == 1 and global.canMove == true) 
	{
		if (!collision_point(x,y+32,oColisao,0,0))
		{ 
			y += 32; 
			global.turn += 1;
			global.fome += 1;
			alarm_set(0,15);
			global.canMove = false;
		}
	}
	
//idle
/*
if (esquerda == 0 and direita == 0 and cima == 0 and baixo == 0)
{
	sprite_index = sPersonagem = 0;
}
*/
#endregion
#endregion

#region //debug
if (keyboard_check_direct(vk_f1)) && (global.gameDebug = false) && (!global.gameRoomDebug = true)
{
	global.gameDebug = true;
}

if (keyboard_check_direct(vk_f2)) && (global.gameRoomDebug = false) && (!global.gameDebug = true)
{
	global.gameRoomDebug = true;
}
#endregion

#region testando
// teste de vida
if keyboard_check_pressed(ord("K"))
{
	global.vida -= 1;
}

if global.vida <= 0
{
	game_end();
}

//teste de xp
if keyboard_check_pressed(ord("X"))
{
	global.xp += 10;
}
#endregion

