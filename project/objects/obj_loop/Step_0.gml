/// @description

switch state {
	
	case states.addition:
	
		break;
	
	case states.action:
		
		if (scr_action_finished()) {
			state = states.addition;
			time_source_start(time_source);
		}
		break;
}






