///spell(id)
function spell(argument0) {
	//show_log("Which Direction you will USE the SPELL",c_yellow)
	var dir = direc;
		switch(argument0){
			case 9:show_log(global.name + " spawns a FIREBALL!",c_yellow);
					var ins = instance_create_layer(x+16,y+16,"Enemy",oWave);
					ins.direction = dir*90;
					ins.image_angle = dir*90;
					ins.stats = 1;break;
			case 10:show_log(global.name + " spawns a ICEBALL!",c_yellow);
					var ins = instance_create_layer(x+16,y+16,"Enemy",oWave);
					ins.direction = dir*90;
					ins.image_angle = dir*90;
					ins.stats = 2;break;
			case 11:show_log(global.name + " Fast Atteck!",c_yellow);
					var ins = instance_create_layer(x+16,y+16,"Enemy",oWave);
					ins.direction = dir*90;
					ins.image_angle = dir*90;
					ins.stats = 3;break;
			case 12:show_log(global.name + " Dig!",c_yellow);
					var ins = instance_create_layer(x+16,y+16,"Enemy",oWave);
					ins.direction = dir*90;
					ins.image_angle = dir*90;
					ins.stats = 4;break;
		}
		spelluse = 0;



}
