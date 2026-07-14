if (global.splitscreen_state == 0)
{
	button_text = "Vertical";
}
else
{
	button_text = "Horizontal";
}

index = 2;
function execute_action(player)
{
	audio_play_sound_on(global.emitter_sound, snd_button_press, 0, false);
	global.splitscreen_state = (global.splitscreen_state + 1) mod 2;
	switch (global.splitscreen_state)
	{
		case 0: button_text = "Vertical";
		break;
	
		case 1: button_text = "Horizontal";
		break;
	}
	scr_viewports(global.splitscreen_state);
}
