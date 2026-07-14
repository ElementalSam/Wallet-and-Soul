function play_music(track)
{
   if (obj_game.current_track == track && audio_is_playing(track))
{
		return;
}

if (obj_game.current_track != noone && audio_is_playing(obj_game.current_track))
{
	audio_stop_sound(obj_game.current_track);
}

audio_play_sound_on(global.emitter_music, track, true, 5);
obj_game.current_track = track;
}
