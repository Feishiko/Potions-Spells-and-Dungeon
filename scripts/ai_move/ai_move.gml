///ai_move(speed);
function ai_move(argument0) {
	sped = argument0;
		//mp_grid_path(grid,path,x,y,oPlayer.x,oPlayer.y,0);
	if(!collision_line(x + 16,y + 16,oPlayer.x + 16,oPlayer.y + 16,oWall,0,0) and collision_circle(x + 16,y + 16,128,oPlayer,0,0) and start == 0){
		start = 1;
		//path_start(path,0,0,0);
	}
	if(start == 1){
		mp_potential_step_object(oPlayer.x + 16,oPlayer.y + 16,sped,oWall);
		//path_start(path,sped,0,0);	
	}
	if(!collision_circle(x + 16,y + 16,220,oPlayer,0,0)){
		start = 0;	
	}
	if(place_meeting(x + 16,y + 16,oEnemy)){
		x = xprevious;
		y = yprevious;
	}



}
