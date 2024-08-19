/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

draw_set_font(fnt_info);
draw_set_halign(fa_left);

if (mouse_over) {
	draw_set_color(c_black);
	draw_rectangle(mouse_x * 2 + 24, mouse_y * 2, mouse_x * 2 + 274 + 24, mouse_y * 2 + 48, false);
	draw_set_color(c_white);
	draw_text(mouse_x * 2 + 8 + 24, mouse_y * 2 + 12, global.tokens[$ token].info);
}


draw_set_font(fnt_main);
draw_set_halign(fa_center);
