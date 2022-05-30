draw_self();
#region //variaveis
itemLeftStart = bbox_left + 50;
itemTopStart = bbox_top + 64;
itemTopStart2 = bbox_top + 64;
itemRightStart = bbox_right - (textBorder * 2);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_font(Font6);
#endregion

#region
if(!global.isEmpty)
	{
		draw_set_alpha(0.5)
		draw_rectangle(bbox_left + textBorder, itemTopStart2 + ((global.itemSelected - global.scrolledAmount) * 24), bbox_right  - (sprite_get_width(sInventario)/2) - 32,  itemTopStart2 + ((global.itemSelected - global.scrolledAmount)* 24) + 24, false);
	}
if(global.isEmpty)
{
	draw_text_ext(x  + 50, y + sprite_get_height(sCharInfo)/2, emptyMessage,32,sprite_get_width(sNineslice3) - textBorder);
}
#endregion

draw_set_alpha(1)
for (var i = 0; i < global.inventoryEndAt; i++)
{
	for(var j = 0; j < playerEquipamentoWidth; j++)
	{
		inventoryOnScreen = i;
		if(j == 0)
			draw_text(itemLeftStart, itemTopStart + (i*24) + 8, ds_grid_get(myItems,0,i + global.scrolledAmount));	//nome do item[
			draw_set_color(c_aqua);
			draw_text(bbox_left,itemTopStart + (i*24) + 8, "corpo")
		if(j == 1)
			draw_text(itemLeftStart + string_width(ds_grid_get(myItems,0,i + global.scrolledAmount)) , itemTopStart + (i*24) + 8, "[" + string(ds_grid_get(myItems,1,i + global.scrolledAmount))  + "]"); //quantidade
			draw_set_color(c_white);
		if(j == 2)
			draw_text(itemRightStart - string_width(ds_grid_get(myItems,5,i + global.scrolledAmount)) - (sprite_get_width(sInventario)/2), itemTopStart + (i*24) + 8, "[" + string(ds_grid_get(myItems,5,i + global.scrolledAmount)) + " kg." + "]"); //peso
			draw_set_color(c_white);
	}
}	



