/// @description text
draw_self();
	
#region scroll	
// CREATE a surface if it doesn't exist
//-----------------------------------------------
// and set flag to redraw the surface
if (!surface_exists(surface)) {
	surface	= surface_create(surface_width, surface_height);
	redraw_surface	= true;
}


// REDRAW the surface but only if necessary
//-----------------------------------------------
// (i.e. if the surface is new, the text changed or the text was scrolled)
if (redraw_surface) {
	redraw_surface = false;
	surface_set_target(surface);
		draw_clear_alpha(c_black, 0);
		
		gpu_set_blendmode_ext(bm_one, bm_zero); // this bm is needed to keep the antialising of the font correct
		draw_set_font(font);
		draw_text_ext(0, text_y_offset, text, -1, surface_width);
		draw_set_font(-1);
		
		gpu_set_blendmode(bm_subtract); // this bm is used to fade the upper and lower pixels for a nice transition
		draw_sprite_stretched(gradient, 0, 0, 0, surface_width, gradient_height);
		draw_sprite_stretched(gradient, 1, 0, surface_height - gradient_height, surface_width, gradient_height);
		
		gpu_set_blendmode(bm_normal);
	surface_reset_target();
	show_debug_message(string_format(current_time / 1000, 0, 1) + ": surface redrawn");
}


// MAIN
//-----------------------------------------------
// draw the text box and then the surface with the text on it
draw_surface(surface, x + text_padding, y + text_padding);
#endregion scroll end