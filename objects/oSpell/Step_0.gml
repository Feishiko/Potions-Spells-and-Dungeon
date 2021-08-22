/// @description Insert description here
// You can write your code in this editor
var idd = collision_point(x + 16,y + 16,oGround,0,0);
if(idd){
	visible = idd.visible;
}
if(find = 0 and visible = true){
	show_log(string(global.name) + " finds a Spell!",c_white);
	find = 1;
}