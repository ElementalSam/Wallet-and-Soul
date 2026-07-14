if (global.player2_health < global.player2_max_health)
{
	global.player2_health += 1;
	
	audio_play_sound_on(global.emitter_sound, snd_pickup_heart, 0, false);
	
	instance_destroy();
}
