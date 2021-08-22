///get_item_name(id);
function get_item_name(argument0) {
	//0Empty 1Potion(MaxHealth) 2Potion(Health) 3Potion(GetHurt) 4Potion(Lightup) 5Potion(Lightdown) 6Potion(Speedup) 7Potion(Speeddown) 8Potion(DoubleMaxHP)
	//GoodPotion 5/8
	//9Spell(Fire) 10Spell(Ice) 11Spell(FastAtteck) 12Spell(Dig)
	var idd,name;
	idd = argument0;
	name = "";
	switch(idd){
		case 0:name = "Empty";break;
		case 1:name = "Potion "+global.pname[1];break;
		case 2:name = "Potion "+global.pname[2];break;
		case 3:name = "Potion "+global.pname[3];break;
		case 4:name = "Potion "+global.pname[4];break;
		case 5:name = "Potion "+global.pname[5];break;
		case 6:name = "Potion "+global.pname[6];break;
		case 7:name = "Potion "+global.pname[7];break;
		case 8:name = "Potion "+global.pname[8];break;
		case 9:name = "Spell-Fireball";break;
		case 10:name = "Spell-Iceball";break;
		case 11:name = "Spell-FastAtteck";break;
		case 12:name = "Spell-Dig";break;
		case 13:name = "Sword";break;
		case 14:name = "Push Gloves";break;
		case 15:name = "Wand of Fire";break;
		case 16:name = "Wand of Ice";break;
		case 17:name = "Wand of Fast Atteck";break;
		case 18:name = "A gun with one Bullet";break;
		case 19:name = "Boiled Water";break;
		default:name = "";
	}	

	return name;


}
