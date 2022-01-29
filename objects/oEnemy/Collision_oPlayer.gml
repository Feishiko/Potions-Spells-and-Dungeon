/// @description Insert description here
// You can write your code in this editor
if(attacktime >= 60){//attack
	if(oPlayer.die == 0){
		show_log("Ouch! "+global.name+" Was Hurt by a Nonelement!",c_white);
		with(oPlayer){
			text_fly(x,y,"*HURT*");
		}
		attacktime = 0;
		global.myhp -= 1;	
	}
	
}