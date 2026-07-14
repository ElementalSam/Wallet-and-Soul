index = 2;
my_preview = noone;
function execute_action(player)
{
    if (player == 1)
	{
		if (instance_exists(global.player1_weapon_instance))
		{
		    with (global.player1_weapon_instance)
			{
		        instance_destroy();
		    }
		}
		global.player1_selected_weapon = obj_weapon_knife;
		global.player1_weapon_instance = instance_create_layer(700, 35, "Instances", global.player1_selected_weapon);
		global.player1_weapon_instance.owner = 1;
		global.player1_weapon_instance.visible = false;
		global.player1_weapon_instance.persistent = true;
		audio_play_sound_on(global.emitter_sound, snd_item_equip, 0, false);
    }
    else if (player == 2)
	{
		if (instance_exists(global.player2_weapon_instance))
		{
		    with (global.player2_weapon_instance)
			{
		        instance_destroy();
		    }
		}
		global.player2_selected_weapon = obj_weapon_knife;
		global.player2_weapon_instance = instance_create_layer(700, 35, "Instances", global.player2_selected_weapon);
		global.player2_weapon_instance.owner = 2;
		global.player2_weapon_instance.visible = false;
		global.player2_weapon_instance.persistent = true;
		audio_play_sound_on(global.emitter_sound, snd_item_equip, 0, false);
	}
}
