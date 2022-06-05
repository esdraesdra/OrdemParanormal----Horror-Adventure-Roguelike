draw_self();

if button_pressed_gui(x+60,y,sCloseTab) 
{
	global.button1= 0;
}
draw_sprite_stretched(sDragTab,0,x-75,y,135,8);
draw_set_font(Font5);




draw_text(x,y,global._itensFinder);

if global._itensFinder > 0
{
	for (var i = 0; i < global._itensFinder; i++)
	{
		draw_text(x,y+(i*10)+ 8 ,i);
			for (var j = 0; j < ds_list_write(global._list); ++j) {
				if (j == 0)
							draw_text(bbox_left + textBorder, bbox_top + (i*24)+8, string(variable_instance_get(global._list[| i], "myItemName")));	
		}
	}
}

