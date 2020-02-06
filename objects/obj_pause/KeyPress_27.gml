/// @description Insert description here
// You can write your code in this editor
if(paused){
	paused = false; 
	instance_activate_all();
	obj_pause.visible = false;
}else{
	paused = true;
	instance_deactivate_all(true);
	obj_pause.visible = true;
}