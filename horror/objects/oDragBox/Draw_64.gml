draw_self();

if button_pressed_gui(x+60,y,sCloseTab) 
{
	global.button1= 0;
}
draw_sprite_stretched(sDragTab,0,x-75,y,135,8);
draw_set_font(Font5);





if global._itensFinder > 0
{
	for (var i = 0; i < global._itensFinder; i+=1)
	{
		if variable_instance_exists(global._list[| i], "myItemName")
		{
			draw_text(bbox_left + textBorder, y + (i*32), string(variable_instance_get(global._list[| i], "myItemName")));	
		}
	}
}


