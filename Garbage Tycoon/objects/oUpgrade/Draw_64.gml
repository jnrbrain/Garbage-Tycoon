draw_set_font(font1);
draw_set_color(c_yellow);
if point_in_rectangle(device_mouse_x(0), device_mouse_y(0), x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2)
{
	if score<100
	draw_text(display_get_gui_width()/2-string_width("Upgrade Press Machine for 100$. Earn More!")/2, window_get_height()/2, "Upgrade Press Machine for 100$. Earn More!");
	else if score>=100
	draw_text(display_get_gui_width()/2-string_width("Upgrade Press Machine for 100$. Already You have!")/2, window_get_height()/2, "Upgrade Press Machine for 100$. Already You have!");
}