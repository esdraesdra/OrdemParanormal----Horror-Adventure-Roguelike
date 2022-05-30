if(! esta_interagindo)
{
	if(collision_circle(x,y,radius,oPersonagem,false,true))
	{
		popup_id.visible = true;
	}else
	{
		popup_id.visible = false;
	}
}