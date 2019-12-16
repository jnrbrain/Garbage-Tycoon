if distance_to_object(instance_nearest(x, y, oWorker))<=25
{
	if sprite_index!=elevator_a
	sprite_index=elevator_a;
	if image_speed!=1 and image_index<3
	image_speed=1;
	else if image_index>=3
	image_speed=0;
}
else if distance_to_object(instance_nearest(x, y, oWorker))>25
{
	if sprite_index!=elevator
	sprite_index=elevator;
};