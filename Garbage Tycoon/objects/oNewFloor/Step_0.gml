if point_in_rectangle(device_mouse_x(0), device_mouse_y(0), x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2) and device_mouse_check_button_pressed(0, mb_left)
{
	if instance_number(oSawmill)<12 and score>=50+instance_number(oSeviye)*100
	{
		instance_create_layer(1106, 1500+354*(instance_number(oSeviye)-2), "Instances", oZemin);
		instance_create_layer(507, 1415+354*(instance_number(oSeviye)-2), "Instances", oSawmill);
		instance_create_layer(799, 1469+354*(instance_number(oSeviye)-2), "Instances", oConveyor);
		instance_create_layer(1169, 1469+354*(instance_number(oSeviye)-2), "Instances", oConveyor);
		instance_create_layer(1411, 1473+354*(instance_number(oSeviye)-2), "Instances", oSepet);
		instance_create_layer(1793, 1371+354*(instance_number(oSeviye)-2), "Instances", oElevator);
		instance_create_layer(1569, 1411+354*(instance_number(oSeviye)-2), "Instances", oWorker);
		instance_create_layer(1104, 1386+354*(instance_number(oSeviye)-2), "Instances", oArkaDuvar);
		instance_create_layer(227, 1244+354*(instance_number(oSeviye)-2), "Instances", oBoru1);
		instance_create_layer(269, 1421+354*(instance_number(oSeviye)-2), "Instances", oBoru2);
		instance_create_layer(1796, 1241+354*(instance_number(oSeviye)-2), "Instances", oSeviye);
		score-=50+instance_number(oSeviye)*100;
		y+=354;
	}
}