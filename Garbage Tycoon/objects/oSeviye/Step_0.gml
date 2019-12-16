if point_in_rectangle(device_mouse_x(0), device_mouse_y(0), x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2) and device_mouse_check_button_pressed(0, mb_left)
{
	if instance_nearest(x-200, y+284, oWorker).seviye==0 and score>=100
	{
		with(instance_nearest(x-200, y+284, oWorker))
		{
			seviye+=1;
		}
		image_index+=1;
		score-=100;
	}
}