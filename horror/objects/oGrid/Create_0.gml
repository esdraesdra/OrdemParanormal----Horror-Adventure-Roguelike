alpha = 0.8;
drawGrid = true;
tiles_largura = room_width/32;
tiles_altura = room_height/32;
//spaw grid


//loop for length

gridArray[0,0] = 0;
for (var i = 0; i < tiles_largura; i++)
{
	for (var j = 0; j < tiles_altura; j++)
	{
		gridArray[i,j]= 1;
	}
}

//colisao

for (var i2 = 0; i2 < tiles_largura; i2++)
{
	for (var j2 = 0; j2 < tiles_altura; j2++)
	{
		if (collision_point(x+(i2*32),y+(j2*32),oColisao,0,0))
		{
			gridArray[i2, j2]  = 0;
		}
	}
}