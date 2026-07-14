if (!global.isPaused)
{
	move_x = platform_speed * facing;

	if (place_meeting(x + facing, y, obj_solid) || place_meeting(x + facing, y, obj_player1) || place_meeting(x + facing, y, obj_player2))
	{
	    facing *= -1;
	    move_x = platform_speed * facing;
	}

	move_and_collide(move_x, move_y, obj_solid, 8, 0, 0, abs(move_x), -1);
	
	platform_dx = move_x;
	platform_dy = move_y;
}
