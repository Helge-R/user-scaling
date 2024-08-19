/// @description 

var _xscale = 1, _yscale = 1;

if (mouse_over) {
	_xscale = 1.1;
	_yscale = 1.1;
	
}

draw_sprite_ext(sprite_index, global.tokens[$ token].ind, x, y, _xscale, _yscale, 0, c_white, 1);








