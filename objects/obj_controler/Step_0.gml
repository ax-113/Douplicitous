randomize();
#region sounds
if MH <= 40{
	if !audio_is_playing(sn_sad){
		audio_stop_all();
		audio_play_sound(sn_sad,1,0);
	}
	if !audio_is_playing(sn_extra){
		audio_play_sound(sn_extra,1,0);
	}
}else if MH >= 80{
	if !audio_is_playing(sn_happy){
		audio_stop_all();
		audio_play_sound(sn_happy,1,0);
	}
}else{
	if !audio_is_playing(sn_neutral){
		audio_stop_all();
		audio_play_sound(sn_neutral,1,0);
	}
}
#endregion
#region filters
var temp_var = (FH + MH) / 200;
fx_set_parameter(my_fx1, "g_Intensity", clamp(1-temp_var,0,1));
layer_set_fx("Tiles_2",my_fx1);

var my_fx2 = layer_get_fx("Effect_1");
var array1;
if temp_var >=0.8{
	array1 = [2,2];
}else if temp_var <= 0.5{
	array1 = [temp_var,1]
}else{
	array1 = [0.7,1]
}
fx_set_parameter(my_fx2, "g_VignetteEdges",array1);
#endregion
#region counters
sec++;
if sec >= 30{
	coldown--;
	sleep--;
	sec = 0;
	coldownD--;
	food_time--;
	MH -= 0.1;
	monster_--;
}
#endregion
if MH <= 0 or FH <= 0{
	dead = true;
}
if MH <= 0 and FH <= 0{
	dead = true;
}
#region spawns
if room == rm_kitchen and food_time <= 0{
	instance_create_layer(random(320),random(160),"Instances",obj_food);
	food_time = 20;
}
if MH <= 70 and monster_ <= 0{
	instance_create_layer(random(room_width),random(room_height),"Instances",obj_monster);
	monster_ = 20;
}


#endregion
if keyboard_check_pressed(ord("Q")){
	image_speed = 2;
	if instance_exists(obj_character){
		if collision_circle(obj_character.x,obj_character.y,30,obj_monster,false,false) and coldownD <= 0{
			obj_monster.H--;
			coldownD = 2;
		}
	}
}