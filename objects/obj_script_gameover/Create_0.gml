if(room==rm_gameover && global.som==0){
	audio_play_sound(snd_gameover,2,0);
	audio_stop_sound(snd_test);
	audio_stop_sound(snd_test3);
	audio_stop_sound(snd_test2);
}

if(global.som==1){
	audio_stop_sound(snd_test);
	audio_stop_sound(snd_test3);
	audio_stop_sound(snd_test2);
	
	global.som=0;
}
