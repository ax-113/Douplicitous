if image_index != 0{
	if obj_controler.FH < 90 {obj_controler.FH += 10;}
	if obj_controler.MH < 97 {obj_controler.MH += 3;}
}else {obj_controler.MH = 0;}
if !audio_is_playing(sn_eat){audio_play_sound(sn_eat,1,0);}
instance_destroy(self);