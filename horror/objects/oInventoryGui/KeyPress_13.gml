if (!instance_exists(oUseItem)) && (!instance_exists(oLookItem)) && global.isEmpty = false && instance_exists(oInventoryGui)
	{
		instance_create_layer(itemLeftStart,itemTopStart2 + ((global.itemSelected - global.scrolledAmount) * 24 + 24),"Instances",oUseItem);
	}
	else if (!instance_exists(oLookItem)) 
	{
		instance_destroy(oUseItem);
	}