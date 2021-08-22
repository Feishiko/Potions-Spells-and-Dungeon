function text_fly(argument0, argument1, argument2) {
	var text = argument2;
	var fx = argument0;
	var fy = argument1;

	var s = instance_create_layer(fx,fy,"Enemy",oFlyText);
	s.x = fx;
	s.y = fy;
	s.text = text;





}
