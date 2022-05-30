if global.isEmpty = false
	{
		AddItem(playerInventory,ds_grid_get(myItems,0,global.itemSelected),ds_grid_get(myItems,1,global.itemSelected),ds_grid_get(myItems,2,global.itemSelected), ds_grid_get(myItems,3,global.itemSelected), ds_grid_get(myItems,4,global.itemSelected),ds_grid_get(myItems,5,global.itemSelected),ds_grid_get(myItems,6,global.itemSelected), ds_grid_get(myItems,7,global.itemSelected), ds_grid_get(myItems,8,global.itemSelected));
		ds_grid_delete_row();	
	}