/// @description Insert description here
// You can write your code in this editor
if(opened == 1){
	image_xscale = -1;	
}
//open
if(keyboard_check_pressed(vk_shift) && opened == 0 && place_meeting(x, y, oPlayer)){
	opened = 1;
	var items;
	items = instance_create_layer(x,y,"Enemy",oItem);//Create a item
	items.stats = stats;
}
//based
var iddd = collision_point(x + 16,y + 16,oGround,0,0);
if(iddd){
	visible = iddd.visible;
}
if(find = 0 and visible = true){
	show_log(string(global.name) + " finds a Chest!",c_white);
	find = 1;
}