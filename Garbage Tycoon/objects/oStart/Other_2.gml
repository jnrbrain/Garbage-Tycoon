audio_play_sound(muzik, 10, true);

//1920 x 1080
surface_resize(application_surface,display_get_width(),display_get_height());
display_set_gui_size(display_get_width(),display_get_height());
window_set_size(display_get_width(),display_get_height());
window_set_rectangle(0, 0, display_get_width(), display_get_height());
application_surface_draw_enable(true);
display_set_gui_maximise(1, 1, 0, 0);

if file_exists("garbage_save.dat")
game_load("garbage_save.dat");