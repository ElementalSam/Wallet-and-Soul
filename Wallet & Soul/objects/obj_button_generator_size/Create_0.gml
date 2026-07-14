index = 3;
function execute_action(player)
{
	audio_play_sound_on(global.emitter_sound, snd_button_press, 0, false);
	size_state = (size_state + 1) mod 3;
	switch (size_state)
	{
		case 0: button_text = "Small"; break;
		case 1: button_text = "Medium"; break;
		case 2: button_text = "Large"; break;
	}
}
