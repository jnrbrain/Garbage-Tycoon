draw_set_font(font0);
draw_set_color(c_lime);
draw_text(room_width/2-string_width(string(score)+"$")/2, string_height(score)/4, "$"+ string(score));
draw_sprite(menu,0,room_width/2-sprite_get_width(menu)*2.5, 120);

if point_in_rectangle(display_mouse_get_x(), display_mouse_get_y(), room_width/2-sprite_get_width(menu)*2.5-55, 65, room_width/2-sprite_get_width(menu)*2.5+55, 175) and device_mouse_check_button_pressed(0, mb_left)
room_goto(rMain);