if (!global.isPaused)
{
	event_inherited();

	if (hurt_timer > 0)
	{
	    hurt_timer -= 1;
	    sprite_index = spr_shade_hurt;
	}
	else
	{
	    sprite_index = spr_shade;
	}

	var vertical_threshold = 10;
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
	
	if (abs(target.y - y) < vertical_threshold)
	{
		sprite_index = spr_shade_casting;
		image_speed = 0;
	    move_x = 0;
	    facing = sign(target.x - x);
	    image_xscale = facing;

	    if (shoot_timer <= 0)
	    {
	        var spawn_x = x + facing * 16;
	        var spawn_y = y;
	        var blade = instance_create_layer(spawn_x, spawn_y, "Instances", obj_shade_blade);
	        blade.direction = point_direction(spawn_x, spawn_y, target.x, target.y);
			blade.image_angle = blade.direction;
	        shoot_timer = 150;
	    }
	}
	else
	{
	    move_x = enemy_move_speed * facing;
		sprite_index = spr_shade;
		image_speed = 0;
	}

	if (place_meeting(x, y + 2, obj_solid))
	{
	    move_y = 0;
	}
	else if (move_y < 10)
	{
	    move_y += 1;
	}

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

	if (shoot_timer > 0) shoot_timer--;
}
