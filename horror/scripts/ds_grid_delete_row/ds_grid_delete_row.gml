// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ds_grid_delete_row(){

//caso tenha 1 item

if(ds_grid_height(ArmarioInventory) == 1)
	{
		if(ds_grid_get(ArmarioInventory,1,0) > 1)
			ds_grid_set(ArmarioInventory,1,0, (ds_grid_get(ArmarioInventory,1,0) - 1));
		else
		{
			for (var i = 0; i < ArmarioInventoryWidth; ++i){
				ds_grid_set(ArmarioInventory,i,0,0);	
			}
		}
	}

	//caso tenha mais de um
	else{
		if(ds_grid_get(ArmarioInventory,1,global.itemSelected) > 1)
			ds_grid_set(ArmarioInventory, 1, global.itemSelected, ds_grid_get(ArmarioInventory, 1, global.itemSelected) - 1);
			else{
				var currentrow = global.itemSelected + 1;
				var rowtoremove = global.itemSelected;
				for (var i = rowtoremove; i < ds_grid_height(ArmarioInventory); ++i)
				{
					ds_grid_set_grid_region(ArmarioInventory, ArmarioInventory, 0, currentrow, 6, currentrow, 0, i);
					currentrow += 1;
				}
				ds_grid_resize(ArmarioInventory, 6, ds_grid_height(ArmarioInventory) - 1);
				if (global.scrolledAmount > 0)
					--global.scrolledAmount;
				if (global.itemSelected > 0)
					--global.itemSelected;
 			}
		}
}