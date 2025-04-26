if obj_bed.with_player == true and sleep <= 0{
	instance_create_layer(240,130,"Instances",obj_character);
	obj_bed.with_player = false;
	coldown = 30;
}else if obj_bed.with_player == false and collision_circle(obj_bed.x, obj_bed.y, 50, obj_character, false, false) and coldown <= 0{
	instance_destroy(obj_character);
	if FH < 100{FH += 10;}
	if MH < 100{MH += 10;}
	obj_bed.with_player = true;
	sleep = 5;
}
