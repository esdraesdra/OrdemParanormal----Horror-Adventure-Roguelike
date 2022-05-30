if place_meeting(x,y,oPersonagem) && (!instance_exists(oArmarioGui2)) && (!instance_exists(oInventoryGui))
{
	instance_create_depth(ui_width,ui_height,depth-1,oArmarioGui2);
}
else
{
	instance_destroy(oArmarioGui2);
}