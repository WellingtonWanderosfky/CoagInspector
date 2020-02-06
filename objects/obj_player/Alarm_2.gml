randomize();
if(global.dificuldade==1)
{
	if(obj_wall_center.x>700)
	{
		repeat(irandom_range(3,4)*spawn){
			instance_create_depth(0,irandom_range(40,700),100,obj_enemy);
		}
	}


	alarm[2]=irandom_range(1,2)*room_speed;
}

else
{
	if(obj_wall_center.x>700)
	{
		repeat(irandom_range(2,3)*spawn){
			instance_create_depth(0,irandom_range(40,700),100,obj_enemy);
		}
	}


	alarm[2]=irandom_range(1,2)*room_speed;

}