/// @description Insert description here
// You can write your code in this editor
if(other.stats == 1 or other.stats == 2 or other.stats == 3){
	with(other){
		instance_destroy();	
	}
	instance_destroy();
}
if(other.stats == 5){//push
	switch(other.direction){
		case 0:x += 60;break;
		case 90:y -= 60;break;
		case 180:x -= 60;break;
		case 270:y += 60;break;
	}
}
