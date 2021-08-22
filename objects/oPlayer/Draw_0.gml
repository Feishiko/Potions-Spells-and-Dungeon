draw_self();
//holding
if(keyboard_check(ord("X"))){
	draw_set_color(c_white);
	draw_circle(x + 16 + lengthdir_x(25, direc*90), y + 16 + lengthdir_y(25, direc*90), 3, true);	
}