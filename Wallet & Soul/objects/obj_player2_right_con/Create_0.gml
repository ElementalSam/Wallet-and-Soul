action = "move_right2";
player = 2;
index = 5;
function execute_action(player)
{
	if (!global.waiting_for_rebind)
	{
		audio_play_sound_on(global.emitter_sound, snd_button_press, 0, false);
		global.waiting_for_rebind = true;
		global.rebind_target = action + "_con";
		global.rebind_player = player;
		global.rebind_mode = "controller";
		y = ystart + 5;
		image_alpha = 0.5;
	}
	else if (global.waiting_for_rebind)
	{
		exit;
	}
}
