if (!instance_exists(oEquipGui)) && (!instance_exists(oArmarioGui)) && (!instance_exists(oLookItem)) && (!instance_exists(oInventoryGui))
{
	instance_create_depth(ui_width,ui_height,depth-1,oEquipGui);
}
else if (!instance_exists(oLookItem))
{
	instance_destroy(oEquipGui);
}