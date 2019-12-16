if timer>0 and timer <30
timer-=1;
if timer<=0
{
	y=instance_nearest(x,y, oZemin).y;
	timer=30;
}