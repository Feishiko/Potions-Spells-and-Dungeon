function push() {


	if(attecktime >= 80 && keyboard_check_released(ord("X"))){
		var ins;
		ins = instance_create_layer(x + 16,y + 16,"Enemy",oWave);
		ins.direction = direc*90;
		ins.image_angle = direc*90;
		ins.stats = 5;
	}
	if(attecktime == 80){
		show_log("Attack Ready",c_white);
		text_fly(x,y,"*READY*");
	}
	if(keyboard_check(ord("X")) && bag == 0){
		attecktime++;	
	}else{
		attecktime = 0;	
	}


}
