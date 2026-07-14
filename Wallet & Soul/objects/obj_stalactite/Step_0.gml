if (!global.isPaused)
{
	if (place_meeting(x, y, obj_solid))
	{
	    move_y = 0;
	}
	else if (move_y < 10)
	{
	    move_y += 1;
	}
	move_and_collide(move_x, move_y, obj_solid, 8, 0, 0, abs(move_x), -1);
	if (place_meeting(x, y + 1, obj_solid))
	{
		audio_play_sound_on(global.emitter_sound, snd_stalactite_break, 0, false);
	    instance_destroy();
	}
}
