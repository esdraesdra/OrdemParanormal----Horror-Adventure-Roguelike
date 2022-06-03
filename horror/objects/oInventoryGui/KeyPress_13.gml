if (!instance_exists(oUseItem)) && (!instance_exists(oLookItem)) && global.isEmpty = false && instance_exists(oInventoryGui)
	{
		instance_create_depth(itemLeftStart,itemTopStart2 + ((global.itemSelected - global.scrolledAmount) * 24 + 24),depth-1,oUseItem);
	}
	else if (!instance_exists(oLookItem)) 
	{
		instance_destroy(oUseItem);
	}
