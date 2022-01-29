/// @description Insert description here
// You can write your code in this editor
if(start == 1 && show == 0){
	show_log("A Nonelement Found you!",c_blue);
	show = 1;
}
var iddd = collision_point(x + 16,y + 16,oGround,0,0);

if(iddd){
	visible = iddd.visible;
}
if(!iddd){
	instance_destroy();
}

//Avoid
if(collision_point(x + 16, y + 16, oEnemy, 0, 1)){
	/*randomize();
	var dir = irandom(3);
	switch(dir){
		case 0: if(collision_point(x + 16 - 8, y + 16, oGround, 0, 0)){x -= 8;}break;
		case 1: if(collision_point(x + 16 + 8, y + 16, oGround, 0, 0)){x += 8;}break;
		case 2: if(collision_point(x + 16, y + 16 - 8, oGround, 0, 0)){y -= 8;}break;
		case 3: if(collision_point(x + 16, y + 16 + 8, oGround, 0, 0)){y += 8;}break;
	}*/
	if(!collision_circle(x + 16, y + 16, 16, oWall, 0, 0)){
		x += lengthdir_x(2, choose(0, 180));
		y += lengthdir_y(2, choose(90, 270));
	}
}