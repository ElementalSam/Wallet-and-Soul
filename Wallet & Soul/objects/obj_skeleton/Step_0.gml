if (!global.isPaused)
{
	event_inherited();

	if (chase_cooldown > 0)
	{
	    chase_cooldown -= 1;
	}
	else
	{
		var target = obj_player1;
		var chase_range = 150;
		
		if (global.player2_enabled && instance_exists(obj_player2))
		{
			var dist1 = abs(obj_player1.x - x);
			var dist2 = abs(obj_player2.x - x);
			
			if (dist2 < dist1)
			{
				target = obj_player2;
			}
		}

	    if (instance_exists(target))
		{
	        var dx = target.x - x;
	        var dist = abs(dx);

	        if (dist < chase_range)
			{
				player_detected = true;
	            var new_facing = sign(dx);
	            if (new_facing != facing)
				{
	                facing = new_facing;
	                chase_cooldown = chase_cooldown_max;
	            }
	        }
			else
			{
				player_detected = false;
			}
	    }
	}

	if (place_meeting(x, y + 2, obj_solid))
	{
	    move_y = 0;
	}
	else if (move_y < 10)
	{
	    move_y += 1;
	}

	move_x = enemy_move_speed * facing;

	if (place_meeting(x + facing, y, obj_solid))
	{
	    facing *= -1;
	    move_x = enemy_move_speed * facing;
	}

	if (!place_meeting(x + facing * 30, y + 5, obj_solid))
	{
	    facing *= -1;
	    move_x = enemy_move_speed * facing;
	}

	move_and_collide(move_x, move_y, obj_solid, 8, 0, 0, abs(move_x), -1);

	image_speed = 1/9;

	if (hurt_timer > 0)
	{
	    hurt_timer -= 1;
	    sprite_index = spr_skeleton_hurt;
	}
	else
	{
	    sprite_index = spr_skeleton;
	}
}
