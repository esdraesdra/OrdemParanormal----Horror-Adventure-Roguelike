/// @description scroll text
// Check if mouse wheel was used
// -1: moved down | 0: didn't move | 1: moved up
var mouse_wheel = mouse_wheel_up() - mouse_wheel_down();

// If the mouse wheel moved:
// - calculate the scrolling offset:
//   - if mouse wheel went down, then the offset moves more to the negative and thus the text moves up
//   - but clamp the offset to the text cannot scroll more than necessary
// - If the text has been scrolled then flag the surface to be redrawn
if (mouse_wheel != 0) {
	var text_y_offset_previous = text_y_offset;
	text_y_offset += scroll_speed * mouse_wheel;
	text_y_offset = clamp(text_y_offset, -text_height + surface_height, 0);
	if (text_y_offset != text_y_offset_previous) redraw_surface	= true;
}


if keyboard_check_pressed(vk_escape) 
{
	instance_destroy();
	redraw_surface = false;
}