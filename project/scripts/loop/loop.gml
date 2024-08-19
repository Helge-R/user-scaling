// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar

randomize();
global.tokens = { // names of each token in game
	aaa : { ind : 0, action : function(_val) { return _val + 8 }, info : "+8 Credits"},
	bbb : { ind : 1, action : function(_val) { return _val * 10 }, info : "+1 Scale"},
	ccc : { ind : 2, action : function(_val) { return _val + 2 }, info : "+2 Credits for each yellow gem"},
	ddd : { ind : 3, action : function(_val) { return _val + 2 }, info : "+2 Credits for each red gem"},
	eee : { ind : 4, action : function(_val) { return _val + 2 }, info : "+2 Credits for each blue gem"},
	fff : { ind : 5, action : function(_val) { scr_retrigger(); return obj_scale.value; }, info : "Retrigger all modules"},
	ggg : { ind : 6, action : function(_val) { 
								array_push(global.gems_owned, instance_create_layer(0, 0, "objects", obj_gem));
								for (var i = 0; i < array_length(global.gems_owned); i++) {
									var _gem = global.gems_owned[i];
									_gem.x = 10 + i * 20;
									_gem.y = 100;
								}
								return obj_scale.value; }, 
					 info : "Generate a random gem"}
}
global.tokens_owned = []; // store the instances of owned tokens
global.gems_owned = [];
global.arr_tokens_remaining = struct_get_names(global.tokens);	
global.arr_tokens_remaining_shop = struct_get_names(global.tokens);	
global.tokens_in_shop = [];
global.token_was_chosen = false;

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

function scr_retrigger() {
	
}

function scr_update_power_value() {
	obj_scale.value += 1;
	for (var i = 0; i < array_length(global.tokens_owned); i++) {
		
		var _struct = global.tokens[$ global.tokens_owned[i].token];	
		obj_scale.value = _struct.action(obj_scale.value);
	}
}



