draw_self();
draw_set_color(c_white);
if gidis==0 and pressed==true
{
	if x<=instance_nearest(x,y,oSepet).bbox_right
		draw_sprite(paket1, instance_nearest(x,y,oSawmill).image_index, x-10, y+10);
}
else if gidis==1
{
	if x<instance_nearest(x,y,oElevator).x
	draw_sprite(paket1, instance_nearest(x,y,oSawmill).image_index, x+10, y+10);
	if x>=instance_nearest(x,y,oElevator).x and paragelir==true
	{
		paraanim=59;
	}
}
if paraanim>0 and paraanim<60
{
	draw_text(instance_nearest(x, y, oElevator).x-string_width("$"+10+10*instance_nearest(x,y,oSawmill).image_index), instance_nearest(x, y, oElevator).bbox_top-200+paraanim, "$"+10+10*instance_nearest(x,y,oSawmill).image_index);
}
if pressed=false and instance_nearest(x, y, oSepet).kutusayisi>0
draw_sprite(unlem, 0, x, y-sprite_height/2-40);