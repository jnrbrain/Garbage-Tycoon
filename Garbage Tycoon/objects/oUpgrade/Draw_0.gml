if instance_nearest(x, y, oSawmill).image_index==0
draw_self();

draw_set_color(c_black);
if point_in_rectangle(device_mouse_x(0), device_mouse_y(0), x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2)
{
	if score<100 and instance_nearest(x, y, oSawmill).image_index==0
	draw_text(room_width/2-string_width("Upgrade Press Machine for 100$. Earn More!")/2, y, "Upgrade Press Machine for 100$. Earn More!");
	else if score>=100 and instance_nearest(x, y, oSawmill).image_index==0
	draw_text(room_width/2-string_width("Upgrade Press Machine for 100$. Already You have!")/2, y, "Upgrade Press Machine for 100$. Already You have!");
}