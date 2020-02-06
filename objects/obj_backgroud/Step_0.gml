layer_hspeed(layer_get_id("Background"),-global.vel);
global.pontos=global.pontos + 0.05;
	if(global.pontos<350&&c1== true){
		audio_play_sound(snd_test,2,1);
		c1= false;
	}
	
	if(global.pontos>350 && global.pontos < 700 && c2== true)
	{
		audio_stop_sound(snd_test);
		audio_play_sound(snd_test2,2,1);
		c2= false;
	}
	
	if(global.pontos>700 && global.pontos < 1300 && c3== true)
	{
		audio_stop_sound(snd_test2);
		audio_play_sound(snd_test2,2,1);
		c3= false; 
	}
	if(global.pontos>1300 && c4= true)
	{
		audio_stop_sound(snd_test2);
		audio_play_sound(snd_test3,2,1);
		c4= false;
	}
	
	if(c5= true && global.pontos>=350 && global.pontos<=700 ) // Velocidade do game, depende da escolha de dificuldade tambem
	{
		if(global.dificuldade==1)
			global.vel=4;
		else
			global.vel=4;
		c5= false;
	}
	
	if(c5= false && global.pontos>700 && global.pontos<1300)
	{
		if(global.dificuldade==0)
			global.vel=4;
		else
			global.vel = 6;
		c5= true;
	}
	
	if(c5= true && global.pontos>=1300)
	{
		if(global.dificuldade==1)
			global.vel=7;
		else
			global.vel = 5;
		c5= false;
	}
	
	
	