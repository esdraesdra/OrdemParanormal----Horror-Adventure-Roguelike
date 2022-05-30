draw_self();
itemLeftStart = bbox_left + 50;
itemTopStart = bbox_top + 64;
itemTopStart2 = bbox_top + 64;
itemRightStart = bbox_right - (textBorder * 2);
draw_set_color(c_white);
draw_set_halign(fa_left);

if(!global.isEmpty)
	{
		draw_set_alpha(0.5)
		draw_rectangle(bbox_left + textBorder, itemTopStart2 + ((global.itemSelected - global.scrolledAmount) * 24), bbox_right - textBorder,  itemTopStart2 + ((global.itemSelected - global.scrolledAmount)* 24) + 24, false);
	}

draw_set_alpha(1)
for (var i = 0; i < global.inventoryEndAt; i++)
{
	for(var j = 0; j < ArmarioInventoryWidth; j++)
	{
		inventoryOnScreen = i;
		if(j == 0)
			draw_text(itemLeftStart, itemTopStart + (i*24) + 8, ds_grid_get(myItems,0,i + global.scrolledAmount));	//nome do item
			draw_set_color(c_aqua);
		if(j == 1)
			draw_text(itemLeftStart + string_width(string(ds_grid_get(myItems,0,i + global.scrolledAmount))) , itemTopStart + (i*24) + 8, "[" + string(ds_grid_get(myItems,1,i + global.scrolledAmount))  + "]"); //quantidade
			draw_set_color(c_white);
		if(j == 2)
			draw_text(itemRightStart , itemTopStart + (i*24), "[" + string(ds_grid_get(myItems,5,i + global.scrolledAmount)) + " kg." + "]"); //peso
			draw_set_color(c_white);
	}
}



draw_set_color(c_white)
if(global.isEmpty)
{
	draw_text_ext(itemLeftStart, itemTopStart, emptyMessage,32,sprite_get_width(sNineslice3) - textBorder);
}