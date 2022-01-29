/// @description Insert description here
// You can write your code in this editor
//THIS GUY NOW CALLED NON_ELEMENT
path = path_add();
sped = 2;
grid = mp_grid_create(0,0,room_width/32,room_height/32,32,32);
start = 0;//It's will start path in if the value = 1
show = 0;
attacktime = 0;

mp_potential_path_object(path,oPlayer.x,oPlayer.y,sped,sped+1,oWall);
mp_potential_path_object(path,oPlayer.x,oPlayer.y,sped,sped+1,oEnemy);

//mp_grid_add_instances(grid,oWall,1);