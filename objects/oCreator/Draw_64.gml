/// @description Insert description here
// You can write your code in this editor
//change
switch(global.font){
	case 0: draw_set_font(font_log);break;
	case 1: draw_set_font(font_log2)break;
}

for(var i = 0;i <= 5;i++){
	draw_text(32,camera_get_view_height(view_camera[0])-32-24*i,global.log[i])
}

