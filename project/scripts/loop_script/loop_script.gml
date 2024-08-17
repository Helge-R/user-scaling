
function switch_loop_state(loop_state){
	
	with loop_state_object {
		instance_destroy(id);	
	}
	
	instance_create_layer(0, 0, "objects", loop.loop_states[$ loop_state].object);
	loop.loop_state = loop_state;
}