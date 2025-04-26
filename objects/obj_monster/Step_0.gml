if distance_to_object(obj_character)<50{
	move_towards_point(obj_character.x,obj_character.y,0.6);
}
if distance_to_object(obj_character)<15{
	atack_player();
}

timer++;
if (timer >= 30) { 
    coldownA -= 1;
    timer = 0;
}
if H <= 0{
	if !audio_is_playing(sn_rawr){audio_play_sound(sn_rawr,1,0);}
	instance_destroy(self);}