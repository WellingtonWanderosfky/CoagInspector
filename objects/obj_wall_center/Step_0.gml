
enemy = instance_place(x,y,obj_enemy);
if(enemy)
with(enemy)motion_set(0,0);

if(gameover==5){
	room_goto(rm_gameover);
}

x -= 4;
if(x<-100)
{
	if(infinite == true){
	x = display_get_width();
	}else{
	instance_destroy();	
	}
}

//obj_wall_center