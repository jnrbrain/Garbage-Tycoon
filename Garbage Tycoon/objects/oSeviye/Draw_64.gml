draw_set_font(font1);
draw_set_color(c_lime);
if point_in_rectangle(device_mouse_x(0), device_mouse_y(0), x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2)
{
	if score<(instance_nearest(x-200, y+284, oWorker).seviye+1)*100
	draw_text(display_get_gui_width()/2-string_width("Earn More!")/4, window_get_height()/2, "Earn More!");
}