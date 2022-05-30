/// @description Init

// BASIC SETTINGS:
// The only things you might want to change
//-----------------------------------------------
font				= Font2;
var _text			= "\nDialogo\n\n";
var _text_padding	= 30;
var _scroll_speed	= 10;
var _gradientsprite	= spr_fade_gradient;


// TEXT & SCROLLING:
//-----------------------------------------------
text			= _text;			// The tex tto show in the text box
text_padding	= _text_padding;	// distance between textbox bounding box and text
text_height		= 0;				// needed to calculate the scroll boundaries
text_y_offset	= 0;				// position of the scrolling
scroll_speed	= _scroll_speed;	// how much the scrolling offset moves


// SURFACE:
//-----------------------------------------------
surface			= -1;
surface_width	= sprite_width  - 2 * text_padding;
surface_height	= sprite_height - 8 * text_padding;
redraw_surface	= false;


gradient		= _gradientsprite;
gradient_height	= sprite_get_height(gradient);


//---------------------------------------------------------