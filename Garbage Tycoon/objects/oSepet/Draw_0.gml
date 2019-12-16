draw_self();
draw_set_font(font1);
if kutusayisi!=5
draw_set_color(c_white);
else if kutusayisi==5
draw_set_color(c_red);
draw_text(x-string_width(kutusayisi), y-100, kutusayisi);