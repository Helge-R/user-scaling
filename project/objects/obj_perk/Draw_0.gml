/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben



var _xscale = 1, _yscale = 1;

if (mouse_over) {
	_xscale = 1.1;
	_yscale = 1.1;
}

draw_sprite_ext(sprite_index, global.tokens[$ token], x, y, _xscale, _yscale, 0, c_white, 1);




