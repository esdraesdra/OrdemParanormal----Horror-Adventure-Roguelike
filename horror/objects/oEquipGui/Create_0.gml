#region //variaveis
textBorder = 50;
myItems = playerEquipamento;
global.isEmpty = false;
emptyMessage = "Você não tem equipamento";

global.itemSelected = 0;
global.scrolledAmount = 0;
global.inventoryEndAt = min(ds_grid_height(myItems), floor((sprite_height / 32)));
#endregion

#region //vendo se não possui equipamentos
inventoryOnScreen = 0;
if (ds_grid_get(myItems, 0, 0) == 0)
{
	global.inventoryEndAt = 0;
	global.isEmpty = true;
}
#endregion


