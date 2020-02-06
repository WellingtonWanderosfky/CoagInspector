nave = instance_place(x,y,obj_player);
if(nave){
	room_goto(rm_gameover);
}
 

 num = instance_place(x,y,obj_enemy);// a parede bateu com inimigo 

if(num){
	if(obj_wall_center)
		with(num) motion_set(point_direction(x,y,obj_wall_center.x,obj_wall_center.y),2 );
	
}    
x -=4;
if(x<-100)
{
	x = display_get_width();	
}