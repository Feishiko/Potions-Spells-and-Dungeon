/// @description Insert description here
// You can write your code in this editor
if(oPlayer.bag == 0){
	time++;
}

if(time >= 100){
	with(oGround){
		if(collision_point(x + 32,y,oLava,0,0)){
			instance_change(oLava,1);	
		}else if(collision_point(x - 32,y,oLava,0,0)){
			instance_change(oLava,1);	
		}else if(collision_point(x,y + 32,oLava,0,0)){
			instance_change(oLava,1);	
		}else if(collision_point(x,y - 32,oLava,0,0)){
			instance_change(oLava,1);	
		}
	}
	time = 0;	
}