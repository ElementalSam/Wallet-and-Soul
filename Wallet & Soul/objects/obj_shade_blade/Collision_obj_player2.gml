if (!global.isPaused)
{
	if (sprite_index = spr_shade_blade)
	{
		if (other.can_take_damage)
		{
			audio_play_sound_on(global.emitter_sound, snd_hurt_player, 0, false);
			global.player2_health -= enemy_damage;
			other.can_take_damage = false;
			other.alarm[0] = other.invincibility_duration;
		}
	}
}
