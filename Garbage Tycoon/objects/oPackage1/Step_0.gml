if instance_exists(oSepet)
{
	
	if distance_to_point(instance_nearest(x, y, oSepet).bbox_right+sprite_width/2, y)>20
	x+=2;
}