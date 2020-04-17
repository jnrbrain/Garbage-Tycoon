if point_in_rectangle(device_mouse_x(0), device_mouse_y(0), x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2) and device_mouse_check_button_pressed(0, mb_left)
{
	if score>=(instance_nearest(x-200, y+284, oWorker).seviye+1)*100 and instance_nearest(x-200, y+284, oWorker).seviye<2
	{
		with(instance_nearest(x-200, y+284, oWorker))
		{
			seviye+=1;
		}
		if instance_nearest(x-200, y+284, oWorker).seviye==2
		instance_create_layer(1500,instance_nearest(x-200, y+284, oWorker).y-50,"Instances", oManager);
		image_index+=1;
		score-=100;
	}
}