///use(id);
function use(argument0) {
	var idd = argument0;
	var s = get_item_name(idd);
	switch(idd){
		case 0:show_log("There is Empty",c_yellow);break;
		case 1:show_log(global.name + " uses " + s + ",You feel Your MaxHealth get UP!",c_green)
				global.mymaxhp += 2;
				global.myhp += 2;
				global.pname[1] = "MaxHealth Up";break;
		case 2:show_log(global.name + " uses " + s + ",You feel Your Health get HEAL!",c_lime)
				global.myhp += 4;
				global.pname[2] = "Heal";break;
		case 3:show_log(global.name + " uses " + s + ",You feel Your Health get DOWN",c_red)
				global.myhp -= 2;
				global.pname[3] = "Hurt";break;
		case 4:show_log(global.name + " uses " + s + ",You feel You can see MORE!",c_yellow)
				global.lightrange += 50;
				global.pname[4] = "See More";break;
		case 5:show_log(global.name + " uses " + s + ",You feel You can't see MORE!",c_red)
				global.lightrange -= 30;
				global.pname[5] = "See Less";break;
		case 6:show_log(global.name + " uses " + s + ",You feel Your Speed get UP",c_yellow)
				global.sped += 0.5;
				global.pname[6] = "Speed Up";break;
		case 7:show_log(global.name + " uses " + s + ",You feel Your Speed get DOWN!",c_red)
				global.sped -= 0.5;
				global.pname[7] = "Speed Down";break;
		case 8:show_log(global.name + " uses " + s + ",You feel Your Health Full Heal!",c_green)
				global.myhp = global.mymaxhp;
				global.pname[8] = "Full Heal";break;
		case 9:spell(9);break;
		case 10:spell(10);break;
		case 11:spell(11);break;
		case 12:spell(12);break;
		case 13:equip(13);break;
		case 14:equip(14);break;
		case 15:equip(15);break;
		case 16:equip(16);break;
		case 17:equip(17);break;
		case 18:equip(18);break;
		case 19:equip(19);break;
	}


}
