/// @description Insert description here
// You can write your code in this editor
if(collision_circle(x,y,global.lightrange,oPlayer,0,0) and collision_line(x,y,oPlayer.x,oPlayer.y,oGround,0,0)){
	visible = true;	
}else if(!collision_circle(x,y,global.lightrange,oPlayer,0,0)){
	visible = false;	
}