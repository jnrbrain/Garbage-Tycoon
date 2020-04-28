if point_in_rectangle(device_mouse_x(0), device_mouse_y(0), x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2) and device_mouse_check_button_pressed(0, mb_left)
{
	if instance_number(oSawmill)<12 and score>=50+instance_number(oSawmill)*100
	{
		instance_create_layer(1106, 1500+354*global.kat, "Instances", oZemin);
		instance_create_layer(507, 1415+354*global.kat, "Instances", oSawmill);
		instance_create_layer(799, 1469+354*global.kat, "Instances", oConveyor);
		instance_create_layer(1169, 1469+354*global.kat, "Instances", oConveyor);
		instance_create_layer(1411, 1473+354*global.kat, "Instances", oSepet);
		instance_create_layer(1793, 1371+354*global.kat, "Instances", oElevator);
		instance_create_layer(1569, 1411+354*global.kat, "Instances", oWorker);
		instance_create_layer(1104, 1386+354*global.kat, "Instances", oArkaDuvar);
		instance_create_layer(227, 1244+354*global.kat, "Instances", oBoru1);
		instance_create_layer(269, 1421+354*global.kat, "Instances", oBoru2);
		instance_create_layer(1796, 1241+354*global.kat, "Instances", oSeviye);
		global.kat+=1;
		score-=250;
		y+=354;
	}
}