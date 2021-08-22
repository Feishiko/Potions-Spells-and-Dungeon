/// @description Insert description here
// You can write your code in this editor
draw_text_color(30,45,string(global.myhp)+"/"+string(global.mymaxhp),c_white,c_white,c_white,c_white,1)
draw_text_color(30,30,"HP ",c_white,c_white,c_white,c_white,1)
for(var i = 0;i < global.myhp;i++){
	draw_text_color(30+30+i*15,30,"#",c_white,c_white,c_white,c_white,1);
}
//RandomEvent
if(global.event > 0){
	draw_text_color(30,70,"Event:" + oCreator.event,c_red,c_red,c_red,c_red,1);	
}
if(keyboard_check_pressed(ord("W")) && bag == 0 && drop == 0){//Open Bag
	//draw_rectangle_color(window_get_width()-200,32,window_get_width()-32,200,c_black,c_black,c_black,c_black,false);
	bag = 1;
	show_log(global.name + " Open the Bag,Which want to Use?",c_white);
}else if(keyboard_check_pressed(ord("W")) && bag == 1 && drop == 0){
	bag = 0
}

if(keyboard_check_pressed(ord("D")) and bag == 0 and drop == 0){//Drop
	show_log(global.name+" Open the Bag,Which want to Drop?",c_white);
	bag = 1;
	drop = 1;
}else if(keyboard_check_pressed(ord("D")) and bag == 1 and drop == 1){
	bag = 0;
	drop = 0;
}
if(drop == 1 and bag == 1){
		for(var i = 0;i <= 5;i++){
		draw_set_color(c_white);
		draw_text(camera_get_view_width(view_camera[0])-220,36+i*20,string(i+1)+"."+get_item_name(global.bag[i]));		
	}
	for(i = 0;i <= 5;i++){
		if(keyboard_check_pressed(ord(i+1))){
			var idd,ins;
			idd = global.bag[i];
			global.bag[i] = 0;//Empty
			if(idd <= 8 && idd != 0){
				ins = instance_create_layer(x,y,"Enemy",oPotion);
				ins.stats = idd;
				ins.find = 1;
			}else if(idd > 8 && idd <= 12){
				ins = instance_create_layer(x,y,"Enemy",oSpell);
				ins.stats = idd;
				ins.find = 1;
			}else if(idd >= 13 && idd < 15){
				ins = instance_create_layer(x,y,"Enemy",oItem);
				ins.stats = idd;
				ins.find = 1;	
			}else if(idd >= 15){
				ins = instance_create_layer(x,y,"Enemy",oItem);
				ins.ammo = global.ammo[i];
				ins.taken = true;
				ins.stats = idd;
				ins.find = 1;	
			}
			
			show_log(global.name + " Drop a " + get_item_name(idd),c_gray);
		}
	}
}
if(bag == 1 and drop = 0){
	for(var i = 0;i <= 5;i++){
		draw_set_color(c_white);
		//Wands
		if(global.bag[i] <= 14){
			draw_text(camera_get_view_width(view_camera[0])-220,36+i*20,string(i+1)+"."+get_item_name(global.bag[i]));		
		}else{
			draw_text(camera_get_view_width(view_camera[0])-220,36+i*20,string(i+1)+"."+get_item_name(global.bag[i])+"[" + string(global.ammo[i]) + "]");
		}
	}
	for(i = 0;i <= 5;i++){
	if(keyboard_check_pressed(ord(num[i]))){
		nums = i;
		use(global.bag[i]);
		if(global.bag[i] <= 12){
			global.bag[i] = 0;
		}else{
			global.ammonow = global.ammo[i];	
		}
	}
}
}

/*
//DEBUG
draw_text(0,90,"Dir = " + string(direc));
draw_text(0,110,"FPS = " + string(fps));
draw_text(0,220,keyboard_lastkey);
draw_text(0,250,"attecktime" + string(attecktime));
