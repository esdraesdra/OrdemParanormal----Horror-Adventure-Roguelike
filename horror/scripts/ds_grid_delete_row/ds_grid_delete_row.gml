
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ds_grid_delete_row2(){

//caso tenha 1 item

if(ds_grid_height(playerInventory) == 1)
	{
		if(ds_grid_get(playerInventory,1,0) > 1)
			ds_grid_set(playerInventory,1,0, (ds_grid_get(playerInventory,1,0) - 1));
		else
		{
			for (var i = 0; i < playerInventoryWidth; ++i){
			ds_grid_set(playerInventory,i,0,0);	
			}
		}
	}

	//caso tenha mais de um
	else{
		if(ds_grid_get(playerInventory,1,global.itemSelected) > 1)
			ds_grid_set(playerInventory, 1, global.itemSelected, ds_grid_get(playerInventory, 1, global.itemSelected) - 1);
			else{
				var rowtoremove = global.itemSelected;
				for (var i = rowtoremove; i < ds_grid_height(playerInventory); ++i)
				{
					ds_grid_set_grid_region(playerInventory, playerInventory, 0,  1, 10,  1, 0, i);
					//currentrow += 1;
				}
				ds_grid_resize(playerInventory, 10, ds_grid_height(playerInventory) - 1);
				if (global.scrolledAmount > 0)
					--global.scrolledAmount;
				if (global.itemSelected > 0)
					--global.itemSelected;
				if (global.inventoryEndAt >= ds_grid_height(playerInventory))
					--global.inventoryEndAt;
 			}
		}
}
