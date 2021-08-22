function move() {

	x = xxx ;//lerp(x,xxx,.3);
	y = yyy;//lerp(y,yyy,.3);
	if(bag == 0){
		if(keyboard_check(vk_up) and !collision_line(x+7,y-global.sped,x+29,y-global.sped,oWall,0,0)){yyy -= 3+global.sped;direc = 1;}
		if(keyboard_check(vk_down) and !collision_line(x+7,y+32+global.sped,x+29,y+32+global.sped,oWall,0,0)){yyy += 3+global.sped;direc = 3;}
		if(keyboard_check(vk_left) and !collision_line(x-global.sped,y+7,x-global.sped,y+29,oWall,0,0)){xxx -= 3+global.sped;direc = 2;}
		if(keyboard_check(vk_right) and !collision_line(x+32+global.sped,y+7,x+32+global.sped,y+29,oWall,0,0)){xxx += 3+global.sped;direc = 0;}
	}
	/*if(bag == 1){
		if(keyboard_check(vk_up) and !collision_line(x+4,y,x+28,y,oWall,0,0)){yyy -= 2+global.sped;direc = 1;}
		if(keyboard_check(vk_down) and !collision_line(x+4,y+32,x+28,y+32,oWall,0,0)){yyy += 2+global.sped;direc = 3;}
		if(keyboard_check(vk_left) and !collision_line(x,y+4,x,y+28,oWall,0,0)){xxx -= 2+global.sped;direc = 2;}
		if(keyboard_check(vk_right) and !collision_line(x+32,y+4,x+32,y+28,oWall,0,0)){xxx += 2+global.sped;direc = 0;}
	}


/* end move */
}
