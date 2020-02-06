 /// @description Insert description here
// You can write your code in this editor
direction = point_direction(x,y,mouse_x,mouse_y)
direction = direction + random_range(-1,1);
audio_play_sound(snd_tiro,1,false);// O aúdio do jogo
//Set speed & image angle
speed = 10;
image_angle = direction; /// @description Insert description here
// You can write your code in this editor
