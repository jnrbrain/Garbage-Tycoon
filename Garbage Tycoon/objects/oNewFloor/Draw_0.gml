if instance_number(oSawmill)<12
draw_self();
if point_in_rectangle(device_mouse_x(0), device_mouse_y(0), x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2)
{
	if score<50+instance_number(oSawmill)*100
	draw_text(room_width/2-string_width("You havent got $"+string(50+instance_number(oSawmill)*100)+" Dollar")/2,y-string_height("You havent got $"+string(50+instance_number(oSawmill)*100)+" Dollar")/2, "You havent got $"+string(50+instance_number(oSawmill)*100)+" Dollar");
	else if score>=50+instance_number(oSawmill)*100
	draw_text(room_width/2-string_width("You can buy new floor for $"+string(50+instance_number(oSawmill)*100))/2,y-string_height("You can buy new floor for $"+string(50+instance_number(oSawmill)*100))/2, "You can buy new floor for $"+string(50+instance_number(oSawmill)*100));
}