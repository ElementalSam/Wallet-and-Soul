if (room = rm_settings_menu)
{
	index = 9;
}
else if (room = rm_news1 || room = rm_wallet_menu || room = rm_weapon_menu || room = rm_help_wallets || room = rm_help_souls)
{
	index = 1;
}
else if (room = rm_news2 || room = rm_help_weapons || room = rm_region_select)
{
	index = 0;
}

function execute_action(player)
{
	scr_save();
	audio_play_sound_on(global.emitter_sound, snd_button_press, 0, false);
    room_goto(rm_main_menu);
}
