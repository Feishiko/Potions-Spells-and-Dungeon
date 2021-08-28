if(keyboard_check_pressed(vk_up) && select > 0){
	select -= 1;	
}
if(keyboard_check_pressed(vk_down) && select < 3){
	select += 1;	
}

//BUTTON
if(keyboard_check_pressed(vk_enter)){
	if(select == 0){//START
		room_goto_next();	
	}
	if(select == 1){//HELP
		if(!instance_exists(oHelp)){
			instance_create_depth(x, y, -10, oHelp);	
		}
	}
	if(select == 2){//STAFF
		if(!instance_exists(oStaff)){
			instance_create_depth(x, y, -10, oStaff);	
		}
	}
	if(select == 3){//QUIT
		game_end();	
	}
}