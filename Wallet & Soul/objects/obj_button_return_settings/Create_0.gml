if room = rm_help_controls
{
	index = 10;
}
if room = rm_help_keybinds
{
	index = 0;
}

function execute_action(player)
{
	if (global.waiting_for_rebind)
	{
		global.waiting_for_rebind = false;
	}
	audio_play_sound_on(global.emitter_sound, snd_button_press, 0, false);
	room_goto(rm_settings_menu);
}
