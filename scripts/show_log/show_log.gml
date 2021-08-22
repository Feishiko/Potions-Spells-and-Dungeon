///show_log(text,col)
function show_log(argument0, argument1) {
	var text,col;
	text = argument0;
	col = argument1;

	draw_set_color(c_white);//强制全部白色wwww
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);


	for(var j = 4;j >= 0;j--){
		global.log[j+1] = global.log[j];
	}
	global.log[0] = text;



}
