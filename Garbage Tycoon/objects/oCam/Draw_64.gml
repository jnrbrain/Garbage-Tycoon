draw_sprite(up_down, 0, display_get_gui_width()/10, display_get_gui_height()*0.4);
draw_sprite(up_down, 1, display_get_gui_width()/10, display_get_gui_height()*0.6);
if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), display_get_gui_width()/10-75, display_get_gui_height()*0.4-50, display_get_gui_width()/10+75, display_get_gui_height()*0.4+50) and device_mouse_check_button(0, mb_left) and y>551
y-=10;
else if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), display_get_gui_width()/10-75, display_get_gui_height()*0.6-50, display_get_gui_width()/10+75, display_get_gui_height()*0.6+50) and device_mouse_check_button(0, mb_left) and y<room_height-551
y+=10;