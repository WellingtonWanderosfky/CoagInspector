draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(fnt_test);
draw_text(60,50,"Pontos:" + string(int64(global.pontos)));;// Printar a pontuação
draw_set_font(fnt_test);
if(global.tiro_forte==1){
	draw_set_font(fnt_forte);
	draw_text(room_width/2,room_height/2 + 300,"Organismo nutrido")
}  
draw_set_font(fnt_test);