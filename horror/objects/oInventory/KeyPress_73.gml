//Criar Iventario apertando I

if (!instance_exists(oInventoryGui)) && (!instance_exists(oArmarioGui)) && (!instance_exists(oLookItem)) && (!instance_exists(oEquipGui))
{
	instance_create_depth(ui_width,ui_height,depth-1,oInventoryGui);
}
else if (!instance_exists(oLookItem)) && (!instance_exists(oUseItem))
{
	instance_destroy(oInventoryGui);
}