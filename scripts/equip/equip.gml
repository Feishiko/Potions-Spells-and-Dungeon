function equip(argument0) {
	var eq = argument0;
	show_log("You Handle the " + get_item_name(eq),c_white);
	global.hand = eq;
	global.bag[nums] = eq;
}
