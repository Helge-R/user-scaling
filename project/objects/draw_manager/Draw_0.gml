/// @description

with scale {
	
	draw_set_color(c_blue);
	draw_text(10, 100, "Scale value: " + string(scale_value));
	draw_set_color(c_white);	
}

with button {
	
	var _col = mouse_over ? draw_set_color(c_blue) : draw_set_color(c_red);
	_col = clicked ? draw_set_color(c_green) : false;
	
	draw_rectangle(x, y, x + width, y + height, false);	
	
	draw_set_color(c_white);
}








