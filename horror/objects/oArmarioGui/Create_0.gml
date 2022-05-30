textBorder = 25;
myItems = ArmarioInventory;
global.isEmpty = false;
emptyMessage = "Você não tem itens";

global.itemSelected = 0;
global.scrolledAmount = 0;
global.inventoryEndAt = min(ds_grid_height(myItems), floor((sprite_height / 32)));
inventoryOnScreen = 0;
if (ds_grid_get(myItems, 0, 0) == 0)
{
	global.scrolledAmount = 0;
	global.isEmpty = true;
}