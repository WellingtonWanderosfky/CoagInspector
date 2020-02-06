     /// @description Insert description here
// You can write your code in this editor
randomize();
if(keyboard_check(vk_up) || keyboard_check(ord("W")) )
y-= 4 ;
if(keyboard_check(vk_down)|| keyboard_check(ord("S")) )
y+=4;
if(keyboard_check(vk_left) ||keyboard_check(ord("A")) )
x-=4;
if(keyboard_check(vk_right) || keyboard_check(ord("D")) )
x+=4;

image_angle = point_direction(x,y,mouse_x,mouse_y);

//atirar
if(global.tiro_forte==0){//mecanica do tiro fraco
if(mouse_check_button(mb_left) && cooldown<1){
 	instance_create_layer(x,y,"BulletsLayer",obj_bullet);
	cooldown=15;
	cowdown2=40;
	global.tiro_forte=0;
}} 
 


if(global.tiro_forte==1&&cowdown2>2){//mecanica do tiro forte
	if(mouse_check_button(mb_left) && cooldown<1){
 	instance_create_layer(x,y,"BulletsLayer",obj_forte);
	var t=instance_create_layer(x,y,"BulletsLayer",obj_forte);
	t.direction+=4;
	cooldown=7;
	cowdown2--;
	if(cowdown2<5)
		global.tiro_forte=0;
} 
	}
	

cooldown=cooldown - 3;

//enemy spawn
if(instance_exists(obj_semiwall)){
	if(global.spawn_enimg== false && obj_semiwall.x>600 )
	{
		timer++;
		if(timespan < 0.5) 
			timespan = 0.5;
		if(timer > room_speed * timespan && instance_nearest(x,y,obj_wall_center).x > 500){
			timespan -= 0.2; 
		instance_create_depth(0,irandom_range(380,495),100,obj_enemy);
		instance_create_depth(0,irandom_range(380,495),100,obj_enemy);
		instance_create_depth(0,irandom_range(380,495),100,obj_enemy);
			timer = 0;
		}   
}
}

if(obj_wall_center.x>700&&controlador== false&& global.spawn_enimg= true){
	alarm[2]= 4*room_speed;
	instance_create_depth(0,irandom_range(40,768),100,obj_enemy);
	instance_create_depth(0,irandom_range(40,768),100,obj_enemy);
	instance_create_depth(0,irandom_range(40,768),100,obj_enemy);
	controlador= true;
}
//background object spawn
timer2++;
if(timer2 >= 0.3*room_speed){
	instance_create_depth(0,random_range(100,700),199,obj_hema);
	timer2 = 0; 
} 
//Vitamina spawn
timer3++;

if(global.vel == 4)
{
	if(timer3>=5*room_speed){
		instance_create_depth(0,irandom_range(100,650),198,obj_vitamina);
		timer3=0;
	}
}

if(global.vel>4)
{
	if(timer3>=2*room_speed){
		instance_create_depth(0,irandom_range(100,650),198,obj_vitamina);
		timer3=0;
	}
}


//pontos

if(global.pontos>350)
{ 
	spawn=2;
}

  

