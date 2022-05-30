	draw_set_color(c_white);
	draw_set_font(Font1)
	draw_set_halign(fa_left);
	draw_set_valign(fa_left);
	
    draw_sprite_stretched(sNineslice,0,400,200,500,300);
	
	draw_text(520,230,"Escolha o Mapa de Inicio");
	for(var i = 0; i < array_length(SeletorMapaOption); i++)
	{
		var _print = "";
		if (i == SeletorMapaOptionSelected)
		{
			_print += "> " + SeletorMapaOption[i] + " <" + "\n" + DescricaoMapaOption[i];
		}
		else
		{
			_print += SeletorMapaOption[i] + "\n" + DescricaoMapaOption[i];
			draw_set_alpha(0.7);
		}
		draw_text(1000 * 0.5, 550 * 0.5 + 18 + (i * 60), _print);
		draw_set_alpha(1.0);
	}
	
