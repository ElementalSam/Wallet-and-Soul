index = 4;
function execute_action(player)
{
	audio_play_sound_on(global.emitter_sound, snd_button_press, 0, false);
	region_state = (region_state + 1) mod 4;
	switch (region_state)
	{
		case 0: button_text = "Desert"; break;
		case 1: button_text = "Forest"; break;
		case 2: button_text = "Tundra"; break;
		case 3: button_text = "Volcano"; break;
	}
}
