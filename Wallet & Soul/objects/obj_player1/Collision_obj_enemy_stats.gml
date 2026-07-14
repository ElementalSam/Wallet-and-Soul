if (!global.isPaused)
{
	if (can_take_damage)
	{
		audio_play_sound_on(global.emitter_sound, snd_hurt_player, 0, false);
		global.player1_health -= other.enemy_damage;
		can_take_damage = false;
		is_hurt = true;
		sprite_index = spr_player1_hurt;
		alarm[1] = sprite_get_number(spr_player1_hurt);
		alarm[0] = invincibility_duration;
	}
}
