// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar


function scr_check_action_finished() {
	return global.token_was_chosen;
}

function scr_create_tokens(_amount = 3) {
	for (var i = 0; i < _amount; i++) {
		array_push(global.tokens_in_shop, instance_create_layer((320 - 60) + i * 48, 272, "objects", obj_token));	
	}
}

global.tokens = { // names of each token in game
	aaa : 0,
	bbb : 1,
	ccc : 2
}


global.tokens_owned = []; // store the instances of owned tokens

global.tokens_in_shop = [];

global.token_was_chosen = false;