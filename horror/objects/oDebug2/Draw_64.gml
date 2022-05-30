if (global.gameRoomDebug = true)
{
	draw_set_color(c_black);
	draw_set_alpha(0.75);
	draw_rectangle(0,50,1000,575,false);
	draw_set_alpha(1.0);
	draw_set_color(c_white);
	draw_set_font(Font1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text(500,267,"Debug Menu");
	for(var i = 0; i < array_length(RoomdebugOption); i++)
	{
		var _print = "";
		if (i == RoomdebugOptionSelected)
		{
			_print += "> " + RoomdebugOption[i] + " <";
		}
		else
		{
			_print += RoomdebugOption[i];
			draw_set_alpha(0.7);
		}
		draw_text(1000 * 0.5, 575 * 0.5 + 18 + (i * 30), _print);
		draw_set_alpha(1.0);
	}
}