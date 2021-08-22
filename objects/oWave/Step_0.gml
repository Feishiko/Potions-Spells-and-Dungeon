/// @description Insert description here
// You can write your code in this editor
//Fast Atteck
if(stats == 3){
	life--;
	speed = 6;
	image_angle = direction;
	if(life <= 0){
		direction += choose(1,2,-1,-2,0);
		id.x = oPlayer.x+16;
		id.y = oPlayer.y+16;
		times--;
		life = 7;
	}
}
if(stats == 4){
	speed = 3;
}
if(stats == 5){
	times -= 6;
}
if(times <= 0){
	instance_destroy();	
}