function equip(argument0) {
	var eq = argument0;
	show_log("You Handle the " + get_item_name(eq),c_white);
	global.hand = eq;
	for(var i = 0;i <= 5;i++){
		if(global.bag[i] = 0){
			global.bag[i] = global.hand;
			break;
		}
	}


}
