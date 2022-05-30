key_z = keyboard_check_pressed(ord("Z"));


var cam_id = view_camera[0];
var cam_width = camera_get_view_width(cam_id);
var cam_height = camera_get_view_height(cam_id);
x = target.x;
y = target.y;
camera_set_view_pos(cam_id,x-cam_width*0.5,y-cam_height*0.5);
camera_set_view_size(cam_id,orig_x_size*zoom,orig_y_size*zoom);


if key_z = true
	{
		zoom -= 0.25;
		
		if zoom = 0.5
		{
			zoom = 1.5;
		}
	}