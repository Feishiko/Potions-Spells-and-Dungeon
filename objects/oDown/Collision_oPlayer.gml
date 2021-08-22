/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_shift)){
	show_log(global.name + " Enter the " + string(global.Floor+1) + " Floor",c_white);
	global.Floor++;
	global.scoree += 100;
	room_restart();	
}