if (mouse_check_button_pressed(mb_left))
	{
    drag = instance_position(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), par_dragable );
    }
if (mouse_check_button_released(mb_left)){
    drag = noone;
    }
if (drag != noone){
    with (drag) {
		x = device_mouse_x_to_gui(0);
        y = device_mouse_y_to_gui(0);
        }
 }
