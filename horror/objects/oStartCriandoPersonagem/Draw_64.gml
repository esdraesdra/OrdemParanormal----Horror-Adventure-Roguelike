	draw_set_font(Font2)
	draw_set_halign(fa_left);
	draw_set_valign(fa_left);

	for (var j = 0; j < op_lenght2; j++)
	{
		var _c = c_gray;
		if pos2 == j {_c = c_white};
		draw_text_color(x + 30 + 200*j, y + 20, tabs[j],_c,_c,_c,_c,1);
	}

	for (var i = 0; i < op_lenght; i++)
	{
		var _c = c_gray;
		if pos == i {_c = c_white};
		draw_text_color(x + 30, y + op_border + op_space*i, character[character_level,i],_c,_c,_c,_c,1);
	}
	
	draw_text(x+600,y,string(global.StartLocation));