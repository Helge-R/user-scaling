// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar

randomize();

function scr_check_action_finished() {
	return global.token_was_chosen;
}

function scr_create_tokens(_amount = 3) {
	global.arr_tokens_remaining_shop = [];
	array_copy(global.arr_tokens_remaining_shop, 0, global.arr_tokens_remaining, 0, array_length(global.arr_tokens_remaining));
	for (var i = 0; i < _amount; i++) {
		array_push(global.tokens_in_shop, instance_create_layer((320 - 60) + i * 48, 272, "objects", obj_token, { token : scr_get_random_token() }));	
	}
}

function scr_get_random_token() {
	show_debug_message(string(global.arr_tokens_remaining))
	var _names = global.arr_tokens_remaining_shop;
	var _token;
	if (array_length(_names) <= 0) {
		return "aaa";
	}
	
	var _ind = irandom(array_length(_names) - 1);
	_token = _names[_ind];
	array_delete(global.arr_tokens_remaining_shop, _ind, 1);
	return _token;
}

global.tokens = { // names of each token in game
	aaa : 0,
	bbb : 1,
	ccc : 2,
	ddd : 3,
	eee : 4,
	fff : 5,
	ggg : 6
}

global.arr_tokens_remaining = struct_get_names(global.tokens);	
global.arr_tokens_remaining_shop = struct_get_names(global.tokens);	

global.tokens_owned = []; // store the instances of owned tokens

global.tokens_in_shop = [];

global.token_was_chosen = false;