index = 16;
my_preview = noone;
function execute_action(player)
{
    if (player == 1)
	{
		var cost = 50;
		if (!global.player1_weapon_unlocked_flanged)
		{
		    if (global.player1_soul_count_blue >= cost &&
		        global.player1_soul_count_green >= cost &&
		        global.player1_soul_count_red >= cost &&
		        global.player1_soul_count_yellow >= cost)
		    {
		        global.player1_soul_count_blue -= cost;
		        global.player1_soul_count_green -= cost;
		        global.player1_soul_count_red -= cost;
		        global.player1_soul_count_yellow -= cost;
				audio_play_sound_on(global.emitter_sound, snd_item_unlock, 0, false);
		        global.player1_weapon_unlocked_flanged = true;
		    }
		    else
		    {
				audio_play_sound_on(global.emitter_sound, snd_item_locked, 0, false);
		        exit;
		    }
		}
		if (instance_exists(global.player1_weapon_instance))
		{
		    with (global.player1_weapon_instance)
			{
				instance_destroy();
			}
		}
		global.player1_selected_weapon = obj_weapon_flanged;
		global.player1_weapon_instance = instance_create_layer(700, 35, "Instances", global.player1_selected_weapon);
		global.player1_weapon_instance.owner = 1;
		global.player1_weapon_instance.visible = false;
		global.player1_weapon_instance.persistent = true;
		audio_play_sound_on(global.emitter_sound, snd_item_equip, 0, false);
    }
    else if (player == 2)
	{
		var cost = 50;
		if (!global.player2_weapon_unlocked_flanged)
		{
		    if (global.player2_soul_count_blue >= cost &&
		        global.player2_soul_count_green >= cost &&
		        global.player2_soul_count_red >= cost &&
		        global.player2_soul_count_yellow >= cost)
		    {
		        global.player2_soul_count_blue -= cost;
		        global.player2_soul_count_green -= cost;
		        global.player2_soul_count_red -= cost;
		        global.player2_soul_count_yellow -= cost;
				audio_play_sound_on(global.emitter_sound, snd_item_unlock, 0, false);
		        global.player2_weapon_unlocked_flanged = true;
		    }
		    else
		    {
				audio_play_sound_on(global.emitter_sound, snd_item_locked, 0, false);
		        exit;
		    }
		}
		if (instance_exists(global.player2_weapon_instance))
		{
		    with (global.player2_weapon_instance)
			{
				instance_destroy();
			}
		}
		global.player2_selected_weapon = obj_weapon_flanged;
		global.player2_weapon_instance = instance_create_layer(700, 35, "Instances", global.player2_selected_weapon);
		global.player2_weapon_instance.owner = 2;
		global.player2_weapon_instance.visible = false;
		global.player2_weapon_instance.persistent = true;
		audio_play_sound_on(global.emitter_sound, snd_item_equip, 0, false);
	}
}
