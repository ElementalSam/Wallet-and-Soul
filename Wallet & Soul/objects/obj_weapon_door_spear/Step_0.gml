if (is_unlocked)
{
    image_speed = 1/20;
    if (image_index >= image_number - 1)
	{
		audio_play_sound_on(global.emitter_sound, snd_item_unlock, 0, false);
        instance_destroy();
    }
}
