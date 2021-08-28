/// @description Insert description here
// You can write your code in this editor
//HELP
if(!instance_exists(oHelp) && keyboard_lastchar == "?"){
	instance_create_depth(0, 0, -1000, oHelp);	
}
if(die == 0){
	move();

	pick();

	hp();
	///weapon
	if(global.handle >= 0){
		switch(global.hand){
			case 13: sword();break;
			case 14: push();break;
			case 15: if(global.ammo[global.handle] >= 1){firewand();}break;
			case 16: if(global.ammo[global.handle] >= 1){icewand();}break;
			case 17: if(global.ammo[global.handle] >= 1){fastwand();}break;
		}
	}
	//Fast Atteck
	if(keyboard_check_pressed(ord("C"))){
		for(var i = 0;i < 6;i++){
			if(global.bag[i] > 8 && global.bag[i] < 12){
				use(global.bag[i]);
				global.bag[i] = 0;
				break;
				show_log("No Spells to FastAtteck",c_white);
			}
			
		}
	}
	//Fast Dig
	if(keyboard_check_pressed(ord("S"))){
		for(var i = 0;i < 6;i++){
			if(global.bag[i] = 12){
				use(global.bag[i]);
				global.bag[i] = 0;
				break;
				show_log("No Spells to Dig",c_white);
			}
			
		}
	}
}
/*if(spelluse == 1){
	use(global.bag[numm]);	
}*/
if(global.myhp <= 0 && die == 0){
	show_log(global.name + " Failed!",c_white);
	show_log(global.name + " has Dead in the " + string(global.Floor) + " Floor",c_white);
	show_log(global.name + "'s Score is " + string(global.scoree),c_white);
	show_log("Press R to Continue",c_white);
	die = 1;
}

if(die == 1){
	if(keyboard_check_pressed(ord("R"))){
		game_restart();
	}
}
//Font Changed
/*
if(keyboard_check_pressed(ord("F"))){
	global.font++;	
}
if(global.font > 3){
	global.font = 0;	
}*/
