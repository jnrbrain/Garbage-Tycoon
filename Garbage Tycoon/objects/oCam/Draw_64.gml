draw_sprite(up_down, 0, display_get_gui_width()/10, display_get_gui_height()*0.4);
draw_sprite(up_down, 1, display_get_gui_width()/10, display_get_gui_height()*0.6);
if point_in_rectangle(display_mouse_get_x(), display_mouse_get_y(), display_get_gui_width()/10-75, display_get_gui_height()*0.4-50, display_get_gui_width()/10+75, display_get_gui_height()*0.4+50) and device_mouse_check_button(0, mb_left) and y>551
y-=10;
else if point_in_rectangle(display_mouse_get_x(), display_mouse_get_y(), display_get_gui_width()/10-75, display_get_gui_height()*0.6-50, display_get_gui_width()/10+75, display_get_gui_height()*0.6+50) and device_mouse_check_button(0, mb_left) and y<room_height-551
y+=10;