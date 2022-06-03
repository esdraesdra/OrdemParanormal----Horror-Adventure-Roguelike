itemLeftStart = bbox_left + 32;
itemTopStart = bbox_top + 64;
itemTopStart2 = bbox_top + 32;
itemRightStart = bbox_right - (textBorder * 2);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_font(Font6);

draw_sprite_stretched(sMenuItem,0,x, y, 200,158);
draw_set_alpha(0.5);
draw_rectangle(itemLeftStart, itemTopStart2 + (pos * 24) + 8,x + 200 - 32,  itemTopStart2 + (pos* 24) + 24, false);

draw_set_alpha(1);

for (var i = 0; i < op_lenght; i++)
	{
		var _c = c_gray;
		if pos == i {_c = c_white};
		
		draw_text_color(itemLeftStart , itemTopStart2 + (i * 24) + 8, MenuItem[global.menu_level,i],_c,_c,_c,_c,1);		
	}
	

