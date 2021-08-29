///floor_create(floor,place_type,size);
function floor_create(argument0, argument1, argument2) {
	var floorr,place,size,xx,yy;
	floorr = argument0;
	place = argument1;
	size = argument2;
	///Create Player
	instance_create_layer(room_width/2,room_height/2,"Instances",oPlayer);
	xx = oPlayer.x;
	yy = oPlayer.y;

	xx = oPlayer.x;
	yy = oPlayer.y;
#region
	///Create Floor TYPE 1
	if(place == 2){
		var tmpdir = -1;//这尼玛是什么东西
		repeat(size+floorr){
			var dir = irandom(3);//0 right 1 up 2 left 3 down
			var step = irandom_range(12,16);
			if(dir != tmpdir){
				for(var i = 0;i < 7;i++){
					for(var j = 0;j < 7;j++){
						var ic;
						ic = irandom(350+global.Floor*20);
						if(ic == 1 or ic == 5){
							instance_create_layer(xx-32*4+i*32,yy-32+j*32,"Enemy",oPotion);			
						}else if(ic == 2 or ic == 7){
							instance_create_layer(xx-32*4+i*32,yy-32+j*32,"Enemy",oSpell)	
						}else if(ic == 198 and !instance_exists(oDown)){
							instance_create_layer(xx-32*4+i*32,yy-32+j*32,"Enemy",oDown)	
						}else if(ic == 200 and !instance_exists(oChest)){
							instance_create_layer(xx-32*4+i*32,yy-32+j*32,"Enemy",oChest);		
						}
				
						instance_create_layer(xx-32*4+i*32,yy-32+j*32,"Instances",oGround);	
					}
				}		
			}
			while(step > 0){
				instance_create_layer(xx,yy,"Instances",oGround);
				//I'm a FOOL,So,This part of code will rise very FUCKQ.
				switch(dir){
					case 0:xx += 32;break;
					case 1:yy -= 32;break;
					case 2:xx -= 32;break;
					case 3:yy += 32;break;
				}
				step--;
			}
			tmpdir = dir;
		}
	}
#endregion
	///Create Floor TYPE 2
	if(place == 3){
			for(var i = 0;i <= 40;i++){
				instance_create_layer(xx + i*32,yy,"Instances",oGround);
				if i == 40 {
					instance_create_layer(xx + i*32,yy,"Enemy",oDown);	
				}
		}
	}
	//Create Walls if wide is empty
	with(oGround){
		if(!place_meeting(x-32,y,oGround))instance_create_layer(x-32,y,"Instances",oWall);
		if(!place_meeting(x+32,y,oGround))instance_create_layer(x+32,y,"Instances",oWall);
		if(!place_meeting(x,y-32,oGround))instance_create_layer(x,y-32,"Instances",oWall);
		if(!place_meeting(x,y+32,oGround))instance_create_layer(x,y+32,"Instances",oWall);
	}

	if(!instance_exists(oDown)){
		room_restart();	
	}
	if(collision_circle(oPlayer.x,oPlayer.y,800 + (size+floorr)*10,oDown,0,0)){
		room_restart();	
	}
	if(global.Floor == 1 && global.show == 0){
		//Stroy
		global.show = 1;
		show_log("AFTER THE WAR, EVERYTHING HAS GONE",c_white);
		show_log("ONLY A FEW HUMAN ALIVE, BUT IN BAD CONDITION.",c_white);
		show_log("FOR THE HUMAN'S FUTURE, HUMAN'S HOPE",c_white);
		show_log("---YOU,NEED TO FIND THE HEART UNDER THIS DUNGEON!",c_white);
		show_log(string(global.name) + " Enter the Dungeon.",c_white);
	}



}
