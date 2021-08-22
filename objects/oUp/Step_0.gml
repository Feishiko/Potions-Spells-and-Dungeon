/// @description Insert description here
// You can write your code in this editor
var idd = collision_point(x + 16,y + 16,oGround,0,0);
if(idd){
	visible = idd.visible;
}
risingtime++;
if(global.event = 3 && risingtime >= 360 && !instance_exists(oLava)){
	instance_create_layer(x,y,"Enemy",oLava);	
}