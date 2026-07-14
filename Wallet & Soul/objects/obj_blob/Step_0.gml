if (!global.isPaused)
{
	event_inherited();

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

	image_speed = 1/8;

	if (hurt_timer > 0)
	{
	    hurt_timer -= 1;
	    sprite_index = spr_blob_hurt;
	}
	else
	{
	    sprite_index = spr_blob;
	}
}
