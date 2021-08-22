/// @description Insert description here
// You can write your code in this editor
if(instance_exists(oPlayer)){
	with(oGround){
		if(place_meeting(x+32,y,noone)){
			instance_create_layer(x+32,y,"Instances",oWall);	
		}
		if(place_meeting(x-32,y,noone)){
			instance_create_layer(x-32,y,"Instances",oWall);	
		}
		if(place_meeting(x,y+32,noone)){
			instance_create_layer(x,y+32,"Instances",oWall);	
		}
		if(place_meeting(x,y-32,noone)){
			instance_create_layer(x,y-32,"Instances",oWall);	
		}
	}	
		
}