/// @description Insert description here
// You can write your code in this editor
//global.Floor++;//层数加一
plus = 0;
pluss = 0;
randomevent = irandom(100-global.Floor);
global.event = 0;
if(randomevent <= 10){
	event = random_event();	
}
if global.Floor == 10 {
	floor_create(global.Floor,3,6+plus);
}else{
	floor_create(global.Floor,2,6+plus);	
}


///varr
/*log = 0;
log[0] = "";
log[1] = "";
log[2] = "";
log[3] = "";
log[4] = "";
log[5] = "";