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
	if x>=instance_nearest(x,y,oElevator).x-20 and paragelir==true and paraanim==60
		paraanim=59;
}
draw_set_color(c_lime);
if paraanim>0 and paraanim<60
	draw_text(instance_nearest(x, y, oElevator).x-50, instance_nearest(x, y, oElevator).bbox_top-200+paraanim*2, "$"+ string(10+10*instance_nearest(x,y,oSawmill).image_index));
if paraanim<=0
	paraanim=60;
if seviye!=2 and pressed=false and instance_nearest(x, y, oSepet).kutusayisi>0 and can>=10
	draw_sprite(unlem, 0, x, y-sprite_height/2-40);
if can<10
{
	draw_sprite(unlem, 1, x, y-sprite_height/2-40);
}
var enerji;
enerji = (can / 100) * 100;
draw_healthbar(bbox_left, bbox_top-3, bbox_right, bbox_top-13, enerji, c_black, c_red, c_lime, 0, true, true);
draw_text(1000,y,can);