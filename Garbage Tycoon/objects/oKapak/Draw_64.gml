//draw_set_font(font0);
draw_set_color(c_lime);
draw_text(room_width/2-sprite_get_width(menu)*3+string_width("$"), 120-string_height(score)/2, "$"+ string(score));
draw_sprite(menu,0,room_width/2-sprite_get_width(menu)*3, 120);

if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), room_width/2-sprite_get_width(menu)*3-55, 65, room_width/2-sprite_get_width(menu)*3+55, 175) and device_mouse_check_button_pressed(0, mb_left)
{
	room_goto(rMain);
	game_save("garbage_save.dat");
}