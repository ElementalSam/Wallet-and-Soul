index = 3;
function execute_action(player)
{
	audio_play_sound_on(global.emitter_sound, snd_button_press, 0, false);
	room_goto(rm_desert_lvl_3);
}
