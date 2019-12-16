if timer>0 and timer <30
timer-=1;
if timer<=0
{
	y=instance_nearest(x,y, oZemin).bbox_top;
	timer=30;
}
if sure>0 and sure<60
sure-=1;
if gidis==3 and device_mouse_check_button_pressed(0, mb_left) and point_in_rectangle(device_mouse_x(0), device_mouse_y(0), bbox_left, bbox_top, bbox_right, bbox_bottom) and instance_nearest(x, y, oSepet).kutusayisi>0
{
	gidis=0;
	pressed=true;
}
if paraanim>0 and paraanim<60
paraanim-=1;
if gidis==0 and pressed==true
{
	if x>instance_nearest(x,y,oSepet).bbox_right+sprite_width/2
	{
		if image_xscale!=-1
		image_xscale=-1;
		if sprite_index!=worker1
		sprite_index=worker1;
		if image_speed!=1
		image_speed=1;
		if seviye==0
		x-=4;
		else if seviye==1
		x-=6;
	}
	else if x<=instance_nearest(x,y,oSepet).bbox_right
	{
		if sprite_index!=worker
		sprite_index=worker;
		if image_speed!=0
		image_speed=0;
		if sure==60
		sure=59;
	}
	if sure==0
	{
		gidis=1;
	}
}
else if gidis==1
{
	if image_xscale!=1
	image_xscale=1;
	if sprite_index!=worker
	sprite_index=worker;
	if x<instance_nearest(x,y,oElevator).x
	{
		if image_speed!=1
		image_speed=1;
		if sprite_index!=worker
		sprite_index=worker;
		if seviye==0
		x+=4;
		else if seviye==1
		x+=6;
	}
	if x>=instance_nearest(x,y,oElevator).x
	{
		if image_speed!=0
		image_speed=0;
		if sprite_index!=worker2
		sprite_index=worker2
		sure=60;
		gidis=2;
		if paragelir==true
		{
			score+=10+10*instance_nearest(x,y,oSawmill).image_index;
			paragelir=false;
		}
	}
}
else if gidis==2
{
	if x>instance_nearest(x,y,oElevator).x-200
	{
		if image_xscale!=-1
		image_xscale=-1;
		if sprite_index!=worker1
		sprite_index=worker1;
		if image_speed!=1
		image_speed=1;
		if seviye==0
		x-=4;
		else if seviye==1
		x-=6;
	}
	else if x<=instance_nearest(x,y,oElevator).x-200
	{
		if sprite_index!=worker2
		sprite_index=worker2
		if image_speed!=0
		image_speed=0;
		gidis=3;
		pressed=false;
	}
}
if distance_to_object(instance_nearest(x,y,oElevator))>150 and paragelir!=true
paragelir=true;