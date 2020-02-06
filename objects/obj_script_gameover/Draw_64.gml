draw_set_font(fnt_forte)
draw_set_color(c_black);
draw_text(room_width/2,room_height/2 + 50,"Sua pontuação: " + string(int64(global.pontos)));
draw_set_color(c_white);
draw_set_font(fnt_test);