if place_meeting(x,y,oPersonagem) && (!instance_exists(oArmarioGui)) && (!instance_exists(oInventoryGui))
{
	instance_create_depth(ui_width,ui_height,depth-1,oArmarioGui);
}
else
{
	instance_destroy(oArmarioGui);
}