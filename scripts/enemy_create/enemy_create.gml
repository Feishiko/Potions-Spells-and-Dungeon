///enemy_create(p);
function enemy_create(argument0) {
	p = argument0;//密度
	num = 0;
	if(!collision_circle(x,y,130,oPlayer,0,0)){
		num = irandom(100 - global.Floor - p);
		if(num == 1){
			instance_create_layer(x,y,"Enemy",oEnemy);	
		}
	}


}
