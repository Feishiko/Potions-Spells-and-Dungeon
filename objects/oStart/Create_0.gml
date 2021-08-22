/// @description Insert description here
// You can write your code in this editor
//变量
global.Floor = 1;
global.scoree = 0;
global.log[0] = " ";
global.log[1] = " ";
global.log[2] = " ";
global.log[3] = " ";
global.log[4] = " ";
global.log[5] = " ";
global.lightrange = 128;//default is 128
global.font = 0;
global.event = 0;//0 none 1 MoreEnemy 2 Bigroom 3 Lavarising
global.show = 0;//show story
global.nums = -1;
global.handle = -1;

//随机数初始化
randomize();
global.name = random_name();
for(i = 0;i <= 5;i++){
	global.bag[i] = 0;//6	
}
//0Empty 1Potion(MaxHealth) 2Potion(Health) 3Potion(GetHurt) 4Potion(Lightup) 5Potion(Lightdown) 6Potion(Speedup) 7Potion(Speeddown) 8Potion(DoubleMaxHP)
//GoodPotion 5/8
//9Spell(Fire) 10Spell(Ice) 11Spell(FastAtteck) 12Spell(Dig)
global.mymaxhp = irandom_range(3,6);
global.myhp = global.mymaxhp;
global.sped = 0;
global.hand = 0;//hand what weapon
global.ammo[0] = -1;
global.ammo[1] = -1;
global.ammo[2] = -1;
global.ammo[3] = -1;
global.ammo[4] = -1;
global.ammo[5] = -1;
//global.ammonow = -1;


for(var i = 1;i <= 9;i++){
	global.pname[i] = random_color() + " " + random_color();	
}
room_goto_next();