depth=3;
image_index=1;
image_speed=0;
if instance_exists(oKonteyner)
{
y=instance_nearest(x,y, oKonteyner).bbox_bottom+sprite_height/2;
x=instance_nearest(x,y, oKonteyner).x;
}