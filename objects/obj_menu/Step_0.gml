if !audio_is_playing(sn_menu){
	audio_stop_all();
	audio_play_sound(sn_menu,1,0);
}