

if (keyboard_check_pressed(ord("Q"))) {
	game_end();	
}

if (keyboard_check_pressed(ord("F"))) {
	window_set_fullscreen(!window_get_fullscreen());	
}

if (keyboard_check_pressed(ord("R"))) {
	game_restart();	
}




