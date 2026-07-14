if (id == global.player1_wallet_instance && variable_global_exists("player1_health") && global.player1_health <= 0)
{
    if (alarm[0] <= 0)
	{
		audio_play_sound_on(global.emitter_sound, snd_player_die, 0, false);
		global.player_dead = true;
        alarm[0] = 59;
    }
}

if (id == global.player2_wallet_instance && variable_global_exists("player2_health") && global.player2_health <= 0)
{
    if (alarm[0] <= 0)
	{
		audio_play_sound_on(global.emitter_sound, snd_player_die, 0, false);
		global.player_dead = true;
        alarm[0] = 59;
    }
}
