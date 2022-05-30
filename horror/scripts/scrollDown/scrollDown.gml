// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrollDown(){
	global.itemSelected = clamp(++global.itemSelected,0,ds_grid_height(myItems) - 1);
	
	if(global.itemSelected >= global.scrolledAmount)
	{
		++global.scrolledAmount;	
		++inventoryOnScreen;
	}
	
	if(global.scrolledAmount + inventoryOnScreen > ds_grid_height(myItems))
	{
		--global.scrolledAmount;
	}
}