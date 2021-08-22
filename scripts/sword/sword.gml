function sword() {


	if(attecktime >= 240 && keyboard_check_released(ord("X"))){
		var ins;
		ins = instance_create_layer(x + 16,y + 16,"Enemy",oWave);
		ins.direction = direc*90;
		ins.image_angle = direc*90;
		ins.stats = 3;
		ins.times = 2;
	}
	if(attecktime == 240){
		show_log("Atteck Ready",c_white);
		text_fly(x,y,"*READY*");
	}
	if(keyboard_check(ord("X")) && bag == 0){
		attecktime++;	
	}else{
		attecktime = 0;	
	}


}
