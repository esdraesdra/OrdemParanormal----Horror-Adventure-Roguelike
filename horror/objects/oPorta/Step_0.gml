if open = false
{
	solid = true;
}
else
{
	solid = false;
	instance_destroy();
	instance_create_depth(x,y,0,oPortaAberta);
}
collision_rectangle(x,y,x+64,y+64,oPersonagem,false,false);

