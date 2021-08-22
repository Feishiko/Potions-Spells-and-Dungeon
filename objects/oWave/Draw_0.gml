/// @description Insert description here
// You can write your code in this editor
var col;
switch(stats){
	case 1:col = c_red;break;
	case 2:col = c_blue;break;
	case 3:col = c_gray;break;
	case 4:col = c_gray;break;
	case 5:col = c_white;break;
}
draw_sprite_ext(sprite_index,image_index,x,y,1,1,image_angle,col,0.6);