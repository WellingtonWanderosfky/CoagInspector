randomize();
if(sprite_exists(paused_sprite))exit;
if(vida <= 0){
instance_destroy();	
}
tiro = instance_place(x,y,obj_bullet);
if(tiro){
	with(tiro) instance_destroy();
	if(global.pontos<100)
	vida -=25;
	if(100<global.pontos && global.pontos<600)
	vida -=20;
	if(600<=global.pontos)
	vida -=15;
	} 
	

 
	
nave = instance_place(x,y,obj_player);
if(nave){
	room_goto(rm_gameover);
}

wallcenter = instance_place(x,y,obj_wall_center);
if(wallcenter){  //Da game over do coagulo
	alarm[0]=60*2;
	audio_play_sound(snd_gameover,1,0);
	audio_stop_sound(snd_test)
	gameover=false;
  	paused_sprite = sprite_create_from_surface(application_surface, 0, 0, 1024, 768  , false, false, 0,0);
	instance_deactivate_all(true);
	exit;
}

enemy = instance_place(x,y,obj_enemy);
if(enemy){
	if(enemy.speed = 0)
	motion_set(0,0);
}

if(x>1200){instance_destroy();}//Destruir o coágulo depois de 1200pixel a x


center = instance_nearest(x,y,obj_wall_center);
if(y < center.y) 
{
	y++; 
} else y--;


if(global.spawn_enimg == true){
	if(global.vel==4)
	{
	if(y<room_height/2 && obj_wall_center.x<700)
	{
		y+=3;
	}

	if(y>room_height/2 && obj_wall_center.x<700)
	{
		y-=3;
	}
	}
	else{
		if(y<room_height/2 && obj_wall_center.x<700)
	{
		y+=4;
	}

	if(y>room_height/2 && obj_wall_center.x<700)
	{
		y-=4;
	}
	
	}

}
else{
if(y<room_height/2 && obj_wall_center.x<600 )
{
	y+=1.5;
}

if(y>room_height/2  && obj_wall_center.x<800)
{
	y-=1.5;
}

}



image_angle +=.3;

