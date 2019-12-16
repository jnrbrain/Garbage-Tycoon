if saniye>0
saniye-=1;
if saniye<=0 and instance_exists(oCopler) and cophakki<3
cophakki+=3;
if saniye<=0 and cophakki>0
{
	saniye=180;
	instance_create_layer(x+sprite_width/2+irandom_range(10,30), y, "Instances", oPackage1);
	cophakki-=1;
}