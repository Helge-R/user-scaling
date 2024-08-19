/// @description

switch state {
	
	case states.addition:
	
		break;
	
	case states.action:
		
		if (scr_check_action_finished()) {
			state = states.addition;
			global.token_was_chosen = false;
			
			for (var i = 0; i < array_length(global.tokens_in_shop); i++) {
				var _ins = global.tokens_in_shop[i];
				global.tokens_in_shop[i] = false;
				instance_destroy(_ins);
			}
			array_delete(global.tokens_in_shop, 0, 3);
			
			time_source_start(time_source);
		}
		break;
}






