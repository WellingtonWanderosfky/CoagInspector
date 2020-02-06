   /// @description Insert description here
// You can write your code in this editor
nave = instance_place(x,y,obj_player);
if(nave){
	room_goto(rm_gameover);
}


 num = instance_place(x,y,obj_enemy);

if(num){
	if(obj_wall_center)
		with(num) motion_set(point_direction(x,y,obj_wall_center.x,obj_wall_center.y),2);
	
}    
x -= global.vel;

if(x<-100)
instance_destroy();

