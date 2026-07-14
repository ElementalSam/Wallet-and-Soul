if (can_break)
{
	audio_play_sound_on(global.emitter_sound, snd_shade_blade_break, 0, false);
	can_break = false;
	is_broken = true;
	sprite_index = spr_shade_blade_broken;
	alarm[0] = 30;
}
