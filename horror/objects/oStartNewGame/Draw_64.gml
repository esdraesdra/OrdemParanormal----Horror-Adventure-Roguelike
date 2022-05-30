	draw_set_font(Font2)
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);

	for (var i = 0; i < op_lenght; i++)
	{
		var _c = c_gray;
		if pos == i {_c = c_white};
		draw_text_color(x+ op_border + op_space*i, y+800, option[menu_level,i],_c,_c,_c,_c,1);
	}
	