index = 2;
function execute_action(player)
{
	audio_play_sound_on(global.emitter_sound, snd_button_press, 0, false);
	global.current_region = obj_button_generator_region.region_state;
	global.current_size = obj_button_generator_size.size_state;
	var region = obj_button_generator_region.region_state;
	var size = obj_button_generator_size.size_state;
	var seed_text = string(obj_textbox_seed.seed_text);
	seed_text = string_replace_all(seed_text, " ", "");
	var seed;
	if (string_length(seed_text) <=0)
	{
		global.current_seed = irandom(999999999);
		obj_textbox_seed.seed_text = string(global.current_seed);
	}
	else
	{
		global.current_seed = real(seed_text);
	}
	room_goto(rm_play_level);
}
