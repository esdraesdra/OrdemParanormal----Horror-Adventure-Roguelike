if (drawGrid == true)
{
	for (var i = 0; i < tiles_largura; i++)
	{
		for (var j = 0; j < tiles_altura; j++)
		{
			if (gridArray[i,j] == 1)
			{
				draw_sprite_ext(sGrid, 0, x+(i*32),y+(j*32),1,1,0,c_white,alpha);
			}
		}
	}
}
