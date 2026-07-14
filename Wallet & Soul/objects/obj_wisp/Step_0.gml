if (!global.isPaused)
{
	if move_x != 0
	{
	    image_xscale = sign(move_x);
	}
	
	var spd = enemy_move_speed;
	
		var target_x = obj_player1.x;
		var target_y = obj_player1.y;
	
	if (global.player2_enabled)
	{
		var dist1 = point_distance(x, y, obj_player1.x, obj_player1.y);
		var dist2 = point_distance(x, y, obj_player2.x, obj_player2.y);
	
		if (dist2 < dist1)
		{
			target_x = obj_player2.x;
			target_y = obj_player2.y;
		}
	}
	
	var dir = point_direction(x, y, target_x, target_y);
	x += lengthdir_x(spd, dir);
	y += lengthdir_y(spd, dir);
	
	if (enemy_health <= 0)
	{
	    x = irandom_range(0, room_width);
	    y = 0;

	    enemy_health = enemy_max_health;
	}

	enemy_health = clamp(enemy_health, 0, enemy_max_health);

	if (hurt_timer > 0)
	{
	    hurt_timer -= 1;
	    sprite_index = spr_wisp_hurt;
	}
	else
	{
	    sprite_index = spr_wisp;
	}
}
