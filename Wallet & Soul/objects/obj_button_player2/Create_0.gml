if (global.player2_enabled)
{
	obj_button_player2.player_state = 1;
	obj_button_player2.button_text = "2 players";
}
else
{
	obj_button_player2.player_state = 0;
	obj_button_player2.button_text = "1 player";
}

index = 3;
function execute_action(player)
{
	audio_play_sound_on(global.emitter_sound, snd_button_press, 0, false);
	player_state = (player_state + 1) mod 2;
	switch (player_state)
	{
		case 0: button_text = "1 player";
		global.player2_enabled = false;
		scr_viewports(global.splitscreen_state);
		break;
	
		case 1: button_text = "2 players";
		global.player2_enabled = true;
		scr_viewports(global.splitscreen_state);
		break;
	}
}
