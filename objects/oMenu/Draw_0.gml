draw_set_color(c_white);
draw_set_font(font_log2);

draw_set_halign(fa_left);
draw_set_valign(fa_left);

//BUTTON
draw_text(room_width - 120, room_height / 2 + 30, "Start");
draw_text(room_width - 120, room_height / 2 + 60, "Help");
draw_text(room_width - 120, room_height / 2 + 90, "Staff");
draw_text(room_width - 120, room_height / 2 + 120, "Quit");

//SELECT CURSOR
draw_text(room_width - 120 - 25, room_height / 2 + 30 + select * 30, ">");