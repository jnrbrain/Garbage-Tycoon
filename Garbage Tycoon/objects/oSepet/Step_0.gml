if gitmesure>0 and gitmesure<60
gitmesure-=1;
if instance_exists(oPackage1)
{
	if distance_to_point(instance_nearest(x, y, oPackage1).bbox_right, instance_nearest(x, y, oPackage1).y)<=25
	{
		if kutusayisi<5
		kutusayisi+=1;
		else if kutusayisi>=5
		score-=2;
		with(instance_nearest(x, y, oPackage1))
		{
			instance_destroy();
		}
	}
}
if distance_to_object(instance_nearest(x,y,oWorker))<=40 and gitmesure==60
{
	gitmesure=59;
}
if gitmesure==55 and kutusayisi>0
kutusayisi-=1;
else if distance_to_object(instance_nearest(x,y,oWorker))>40 
gitmesure=60;