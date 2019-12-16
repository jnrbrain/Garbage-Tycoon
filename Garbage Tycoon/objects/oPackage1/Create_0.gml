image_index=instance_nearest(x, y, oSawmill).image_index;
image_speed=0;
y=instance_nearest(x,y, oConveyor).bbox_top-sprite_height/4;
x=instance_nearest(x,y, oConveyor).bbox_left+sprite_width;
depth=19;