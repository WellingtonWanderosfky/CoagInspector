 /// @description Insert description here
// You can write your code in this editor
direction = point_direction(x,y,mouse_x,mouse_y)
direction = direction + random_range(-4,4);
audio_play_sound(snd_tiro,1,false);// O aúdio do jogo
//Set speed & image angle
speed = 16;
image_angle = direction;  
 