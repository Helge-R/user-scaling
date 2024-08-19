/// @description 

round_step = 1;
game_round = 0;

addition_value = 1;

states = {
	addition : 0,
	action : 1
};

state = states.addition;

time_source = time_source_create(time_source_game, 1, time_source_units_seconds, function() {
	
	scr_update_power_value();
	
	round_step += 1;
	
	if (round_step < 4) {
		time_source_start(time_source);
		return;
	}
	
	round_step = 1;
	game_round += 1;
	state = states.action;
	scr_create_tokens();
	
});


time_source_start(time_source);







