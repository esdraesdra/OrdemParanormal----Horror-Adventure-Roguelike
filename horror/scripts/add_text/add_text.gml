/// @description add_text(string)
/// @param string	string to add to the text box
function add_text(argument0) {


	// flag the surface to be redrawn
	// add the new text
	// get text height which is used when scrolling
	with (obj_scrolling_text_box) {
		redraw_surface	= true;
		text += argument0;
		draw_set_font(font);
		text_height	= string_height_ext(text, -1, surface_width);
		draw_set_font(Font2);
		draw_set_color(c_red)
	}



}
