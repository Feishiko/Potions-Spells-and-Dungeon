/// @description Insert description here
// You can write your code in this editor
if(start == 1 && show == 0){
	show_log("A Enemy Found you!",c_blue);
	show = 1;
}
var iddd = collision_point(x + 16,y + 16,oGround,0,0);

if(iddd){
	visible = iddd.visible;
}
if(!iddd){
	instance_destroy();
}