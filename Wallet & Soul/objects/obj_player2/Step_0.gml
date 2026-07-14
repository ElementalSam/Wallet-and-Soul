if (!global.isPaused)
{
	function input_check_pressed(action)
	{
		return keyboard_check_pressed(global.player2_keybinds[? action]);
	}
	
	move_x = input_check(global.player2_keybinds, "move_right2", global.player2_device, global.player2_use_controller) - input_check(global.player2_keybinds, "move_left2", global.player2_device, global.player2_use_controller);
	move_x *= global.player2_move_speed;

	if (!global.player_dead)
	{
		if (!is_dashing && dash_cooldown_timer <= 0 && input_check(global.player2_keybinds, "dash2", global.player2_device, global.player2_use_controller))
		{
			if input_check(global.player2_keybinds, "move_right2", global.player2_device, global.player2_use_controller) || input_check(global.player2_keybinds, "move_left2", global.player2_device, global.player2_use_controller)
			{
				audio_play_sound_on(global.emitter_sound, snd_dash, 0, false);
			    is_dashing = true;
			    dash_timer = dash_time;
			    dash_direction = input_check(global.player2_keybinds, "move_right2", global.player2_device, global.player2_use_controller) - input_check(global.player2_keybinds, "move_left2", global.player2_device, global.player2_use_controller);
			}
		}
		if is_dashing
		{
			if can_take_damage
			{
				can_take_damage = false;
				alarm[0] = 5;
			}
			move_x = dash_direction * global.player2_dash_speed;
			dash_timer -= 1;
			if dash_timer <= 0
			{
				is_dashing = false;
				dash_cooldown_timer = global.player2_dash_cooldown;
			}
		}
		else
		{
			move_x = input_check(global.player2_keybinds, "move_right2", global.player2_device, global.player2_use_controller) - input_check(global.player2_keybinds, "move_left2", global.player2_device, global.player2_use_controller);
			move_x *= global.player2_move_speed;
			if dash_cooldown_timer > 0 dash_cooldown_timer -= 1;
		}

		if place_meeting(x, y + 2, obj_solid)
		{
			move_y = 0;
			if (!place_meeting(x + move_x, y + 2, obj_solid) && place_meeting(x + move_x, y + 10, obj_solid))
			{
				move_y = abs(move_x);
			    move_x = 0;
			}
			else if (place_meeting(x + move_x, y + 2, obj_solid) && !place_meeting(x + move_x, y + 1, obj_solid))
			{
				move_y = 1;
			}

			if (input_check(global.player2_keybinds, "jump2", global.player2_device, global.player2_use_controller))
			{
				move_y = -global.player2_jump_speed;
			}
		}
		else if move_y < 10
		{
			   move_y += 1;
		}
	
		if move_x != 0
		{
			image_xscale = sign(move_x);
		}

		move_and_collide(move_x, move_y, obj_solid, 8, 0, 0, abs(move_x), -1);
		
		var plat = instance_place(x, y + 1, obj_platform);
		if (plat != noone)
		{
			if (place_meeting(x, y + 1, obj_platform))
			{
				move_and_collide(plat.platform_dx, plat.platform_dy, obj_solid, 8, 0, 0, abs(plat.platform_dx), -1);
			}
		}

		if (input_check(global.player2_keybinds, "attack2", global.player2_device, global.player2_use_controller))
		{
		    if (instance_exists(global.player2_weapon_instance))
		    {
		        var weapon = global.player2_weapon_instance;
		        if (weapon.cooldown_timer <= 0)
		        {
		            var x_offset = image_xscale > 0 ? 12 : -12;
		            weapon.x = x + x_offset;
		            weapon.y = y;
		            weapon.image_xscale = image_xscale;
		            weapon.visible = true;
		            global.player2_weapon_attacking = true;
		            weapon.alarm[0] = 30;
		            weapon.cooldown_timer = weapon.weapon_cooldown - global.player2_wallet_instance.wallet_bonus_strike;
		        }
		    }
		}
	
		if (is_hurt)
		{
			exit;
		}
		var state;
		if (global.player2_weapon_attacking) state = "attack";
		else if (is_dashing) state = "dash";
		else if (!place_meeting(x, y+1, obj_solid)) state = "jump";
		else if (abs(move_x) >= 4.5) state = "walk_fast";
		else if (abs(move_x) == 3.5) state = "walk_med";
		else if (abs(move_x) == 2.5) state = "walk_slow";
		else state = "idle";
		
		switch (state)
		{
			case "attack": sprite_index = spr_player2_attack; image_speed = 0; break;
			case "dash": sprite_index = spr_player2_dash; image_speed = 0; break;
			case "jump": sprite_index = spr_player2_jump; image_speed = 0; break;
			case "walk_fast": sprite_index = spr_player2_walk; image_speed = 1/4; break;
			case "walk_med": sprite_index = spr_player2_walk; image_speed = 1/6; break;
			case "walk_slow": sprite_index = spr_player2_walk; image_speed = 1/8; break;
			case "idle": sprite_index = spr_player2_idle; image_speed = 1/30; break;
		}
	}

	if (instance_exists(global.player2_weapon_instance))
	{
	    if (global.player2_health == global.player2_max_health && !full_health_speed_bonus_applied && !full_health_attack_bonus_applied)
		{
	        global.player2_move_speed += global.player2_weapon_instance.weapon_full_health_bonus;
			global.player2_weapon_instance.weapon_damage += global.player2_weapon_instance.weapon_full_damage_bonus;
	        full_health_speed_bonus_applied = true;
			full_health_attack_bonus_applied = true;
	    }
	    else if (global.player2_health < global.player2_max_health && full_health_speed_bonus_applied && full_health_attack_bonus_applied)
		{
	        global.player2_move_speed -= global.player2_weapon_instance.weapon_full_health_bonus;
			global.player2_weapon_instance.weapon_damage -= global.player2_weapon_instance.weapon_full_damage_bonus;
	        full_health_speed_bonus_applied = false;
			full_health_attack_bonus_applied = false;
	    }
	}

	if (instance_exists(global.player2_weapon_instance))
	{
	    if (global.player2_health <= 2 && !low_health_attack_bonus_applied)
		{
	        global.player2_weapon_instance.weapon_damage += global.player2_weapon_instance.weapon_low_damage_bonus;
	        low_health_attack_bonus_applied = true;
	    }
	    else if (global.player2_health > 2 && low_health_attack_bonus_applied)
		{
	        global.player2_weapon_instance.weapon_damage -= global.player2_weapon_instance.weapon_low_damage_bonus;
	        low_health_attack_bonus_applied = false;
	    }
	}
}

global.player2_health = clamp(global.player2_health, 0, global.player2_max_health);
