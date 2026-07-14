if (instance_exists(obj_menu_controller))
{
	index = 5;
}
else if (instance_exists(obj_pause))
{
	index = 0;
}

function execute_action(player)
{
	audio_play_sound_on(global.emitter_sound, snd_button_press, 0, false);
    if (window_get_fullscreen())
	{
        window_set_fullscreen(false);
    }
	else
	{
        window_set_fullscreen(true);
    }
}
