depth=3;
image_index=1;
image_speed=0;
if instance_exists(oBoru1)
{
y=instance_nearest(x,y, oBoru1).bbox_top-sprite_height/2;
x=instance_nearest(x,y, oBoru1).x;
}