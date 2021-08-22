/// @description Insert description here
// You can write your code in this editor
if(stats == 4){
	with(other){
		instance_create_layer(x,y,"Instances",oGround);
		if(!place_meeting(x-32,y,oGround))instance_create_layer(x-32,y,"Instances",oWall);
		if(!place_meeting(x+32,y,oGround))instance_create_layer(x+32,y,"Instances",oWall);
		if(!place_meeting(x,y-32,oGround))instance_create_layer(x,y-32,"Instances",oWall);
		if(!place_meeting(x,y+32,oGround))instance_create_layer(x,y+32,"Instances",oWall);
		instance_destroy();
	}
	times -= 10;
}