/// @description 

mouse_over = point_in_rectangle(mouse_x, mouse_y, rectangle[0], rectangle[1], rectangle[2], rectangle[3]);


if (!global.token_was_chosen) {
	global.token_was_chosen = mouse_over and mouse_check_button_pressed(mb_left); 	
	if (global.token_was_chosen) {
		array_push(global.tokens_owned, instance_create_layer(12 + array_length(global.tokens_owned) * 32, 12, "objects", obj_perk));	
	}
}








