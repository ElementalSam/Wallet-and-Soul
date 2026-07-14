if (!global.isPaused)
{
	if enemy_health <= 0
	{
		instance_destroy();
	}
	enemy_health = clamp(enemy_health, 0, enemy_max_health);

	image_speed = 1/6;
	if (hurt_timer > 0)
	{
	    hurt_timer -= 1;
	    sprite_index = spr_dropper_hurt;
	}
	else
	{
	    sprite_index = spr_dropper;
	}
	
	var vertical_threshold = 30;
	var target = obj_player1;
	if (global.player2_enabled)
	{
		var dist1 = point_distance(x, y, obj_player1.x, obj_player1.y);
		var dist2 = point_distance(x, y, obj_player2.x, obj_player2.y);
		if (dist2 < dist1)
		{
			target = obj_player2;
		}
	}
	
	if (abs(target.x - x) < vertical_threshold && target.y > y)
	{
		var block = collision_line(x, y, target.x, target.y, obj_solid, false, true);
		if (block == noone)
		{
			sprite_index = spr_dropper_hurt;
			if (shoot_timer <= 0)
			{
				var spawn_x = x;
				var spawn_y = y + 5;
				var stalactite = instance_create_layer(spawn_x, spawn_y, "Instances", obj_stalactite);
				shoot_timer = 90;
			}
		}
		else
		{
			sprite_index = spr_dropper;
		}
    }
	else
	{
		sprite_index = spr_dropper;
	}
	if (shoot_timer > 0) shoot_timer--;
}
