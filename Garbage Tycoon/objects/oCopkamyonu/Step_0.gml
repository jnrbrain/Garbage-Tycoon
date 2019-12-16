if gitgel==0
{
	if beklemesure>0
	beklemesure-=1;
	else if beklemesure==0
	{
		gitgel=1;
		if !audio_is_playing(kamyon_ses)
		audio_play_sound(kamyon_ses, 10, false);
	}
	if ivme1!=1
	ivme1=1;
	if ivme2!=0
	ivme2=0;
}
else if gitgel==1
{
	if ivme1>0
	ivme1-=0.01;
	x+=ivme1*4;
	if ivme1<=0
		gitgel=2;
}
else if gitgel==2
{
	if donme>-45 and waiting>60
	donme-=1;
	else if donme<0 and waiting<=60
	donme+=1;
	if  irandom_range(5,10)==waiting or irandom_range(15,20)==waiting or irandom_range(25,30)==waiting or irandom_range(35,40)==waiting
	instance_create_layer(bbox_right+irandom_range(0,20), y+5, "Instances", oCopler);
	oKapak.image_angle=donme;
	if waiting>0
	waiting-=1;
	if waiting==0
		gitgel=-1;
}
else if gitgel==-1
{
	if ivme2<1
	ivme2+=0.01;

	else if ivme2==1
	{
		x=-210;
		gitgel=0;
		audio_stop_sound(kamyon_ses);
		if beklemesure!=180
		beklemesure=180;
		if waiting!=120
		waiting=120;
	}
	x-=ivme2*4;
}