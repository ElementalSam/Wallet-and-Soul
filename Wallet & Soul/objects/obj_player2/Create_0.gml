if (global.player2_enabled)
{
	global.player2_max_health = 5;
	global.player2_health = 5;
	if (instance_exists(global.player2_weapon_instance)) && (instance_exists(global.player2_wallet_instance))
	{
	    global.player2_max_health += global.player2_weapon_instance.weapon_max_health_bonus;
		global.player2_max_health += global.player2_wallet_instance.wallet_bonus_max_health;
		global.player2_health += global.player2_weapon_instance.weapon_health_bonus;
		global.player2_health += global.player2_wallet_instance.wallet_bonus_health;
	}

	invincibility_duration = 60;
	can_take_damage = true;
	is_hurt = false;

	global.player2_dash_speed = 11;
	if (instance_exists(global.player2_weapon_instance)) && (instance_exists(global.player2_wallet_instance))
	{
	    global.player2_dash_speed += global.player2_weapon_instance.weapon_dash_bonus;
		global.player2_dash_speed += global.player2_wallet_instance.wallet_bonus_dash;
	}

	global.player2_dash_cooldown = 90;
	if (instance_exists(global.player2_weapon_instance)) && (instance_exists(global.player2_wallet_instance))
	{
	    global.player2_dash_cooldown -= global.player2_weapon_instance.weapon_dash_cooldown_bonus;
		global.player2_dash_cooldown -= global.player2_wallet_instance.wallet_bonus_dash_cooldown;
	}

	dash_cooldown_timer = 0;
	dash_time = 11;
	dash_timer = 0;
	is_dashing = false;
	dash_direction = 1;

	global.player2_move_speed = 2.5;
	if (instance_exists(global.player2_weapon_instance)) && (instance_exists(global.player2_wallet_instance))
	{
	    global.player2_move_speed += global.player2_weapon_instance.weapon_speed_bonus;
		global.player2_move_speed += global.player2_wallet_instance.wallet_bonus_speed;
	}

	global.player2_jump_speed = 16;
	if (instance_exists(global.player2_weapon_instance)) && (instance_exists(global.player2_wallet_instance))
	{
	    global.player2_jump_speed += global.player2_weapon_instance.weapon_jump_bonus;
		global.player2_jump_speed += global.player2_wallet_instance.wallet_bonus_jump;
	}

	move_x = 0;
	move_y = 0;

	full_health_speed_bonus_applied = false;
	full_health_attack_bonus_applied = false;
	low_health_attack_bonus_applied = false;

	image_speed = 1/2;
}
else
{
	instance_destroy();
}
