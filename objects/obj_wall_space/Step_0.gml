  /// @description Insert description here
// You can write your code in this editor
enemy = instance_place(x,y,obj_enemy);
for(liney = 360; liney < 490; liney++){
	enemyline = collision_line(700,liney,790,liney,obj_enemy,true,true);
	if(enemyline)
	col++;
}
if(col == (490 - 360))
room_goto(rm_gameover);
col = 0;