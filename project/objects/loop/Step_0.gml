/// @description 

switch loop_state {
	case loop_states.app_select:
		if !instance_exists(lso_app_select) instance_create_layer(0, 0, "objects", lso_app_select);
		break;
}








