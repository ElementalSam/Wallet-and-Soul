if (!activated)
{
    timer = 60;
    activated = true;
	audio_play_sound_on(global.emitter_sound, snd_flag, 0, false);
}
