if instance_exists(obj_pause) && (!global.isPaused)
{
	if (owner == 1 && global.player1_weapon_attacking && instance_exists(obj_player1))
	{
	    var player = obj_player1;
	    var x_offset = player.image_xscale > 0 ? 12 + weapon_reach + global.player1_wallet_instance.wallet_bonus_reach : -12 - weapon_reach - global.player1_wallet_instance.wallet_bonus_reach;
	    x = player.x + x_offset;
	    y = player.y;
	    image_xscale = player.image_xscale;
	}
	if (owner == 2 && global.player2_weapon_attacking && instance_exists(obj_player2))
	{
	    var player = obj_player2;
	    var x_offset = player.image_xscale > 0 ? 12 + weapon_reach + global.player2_wallet_instance.wallet_bonus_reach : -12 - weapon_reach - global.player2_wallet_instance.wallet_bonus_reach;
	    x = player.x + x_offset;
	    y = player.y;
	    image_xscale = player.image_xscale;
	}

	if (cooldown_timer > 0)
	{
		cooldown_timer -= 1;
	}
}
