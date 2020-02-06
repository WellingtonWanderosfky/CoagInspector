 /// @description Insert description here
// You can write your code in this editor
if(sprite_exists(paused_sprite)){
	draw_sprite_ext(paused_sprite,0,0,0,1,1,0,c_white,1); //Sistema de pause do sprite
	draw_set_font(fnt_gameover);
	draw_text(room_width/2,room_height/2,"Game Over");
}