///pick();
function pick() {
	var item;
	item = collision_point(x+16,y+16,oPickup,0,0);
	if(keyboard_check_pressed(ord("Z")) and item){//,pickup 188
		for(var i = 0;i <= 5;i++){
			if(global.bag[i] = 0){
				global.bag[i] = item.stats;
				if(item.stats >= 15 && item.taken == false){
					item.ammo = 5;	
				}
				item.taken = true;
				if(item.stats >= 15){//wands
					global.ammo[i] = item.ammo;	
				}
				if(item.stats <= 8){
					show_log(string(global.name) + " picks up a Potion.",c_white);	
				}else if(item.stats >= 9 && item.stats <= 12){
					show_log(string(global.name) + " picks up a Spell.",c_white);
				}else if(item.stats >= 13 && item.stats <= 19){
					show_log(string(global.name) + " picks up a Item.",c_white);	
				}
				instance_destroy(item);	
				break;
				if(global.bag[i] != 0){
					show_log(global.name + "Can't pick anything up",c_white);	
				}
			}
		}		
	}



}
