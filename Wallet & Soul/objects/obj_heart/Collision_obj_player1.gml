if (global.player1_health < global.player1_max_health)
{
	global.player1_health += 1;
	
	audio_play_sound_on(global.emitter_sound, snd_pickup_heart, 0, false);
	
	instance_destroy();
}
