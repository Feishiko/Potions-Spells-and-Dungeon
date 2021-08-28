function random_event() {
	event = choose("MoreEnemy","BigRoom","LavaRising");
	plus = 0;
	switch(event){
		case "BigRoom": plus = irandom_range(6,10);global.event = 2;break;
		case "MoreEnemy": pluss = irandom_range(50,60);global.event = 1;break;
		case "LavaRising": global.event = 3;break;
	}
	return event;


}
