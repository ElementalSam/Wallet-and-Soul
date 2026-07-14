if (enemy_can_take_damage)
{
	audio_play_sound_on(global.emitter_sound, snd_enemy_hurt, 0, false);
	
	if (other.owner == 1)
	{
		enemy_health -= other.weapon_damage + global.player1_wallet_instance.wallet_bonus_damage;
	}
	if (other.owner == 2)
	{
		enemy_health -= other.weapon_damage + global.player2_wallet_instance.wallet_bonus_damage;
	}
	
	enemy_can_take_damage = false;
	alarm[0] = enemy_invincibility_duration;
}
