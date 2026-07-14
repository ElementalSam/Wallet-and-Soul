index = 2;
my_preview = noone;
function execute_action(player)
{
    if (player == 1)
	{
        if (instance_exists(global.player1_wallet_instance))
		{
            with (global.player1_wallet_instance) instance_destroy();
        }
        global.player1_selected_wallet = obj_wallet_common;
        global.player1_wallet_instance = instance_create_layer(700, 35, "Instances", global.player1_selected_wallet);
        global.player1_wallet_instance.owner = 1;
        global.player1_wallet_instance.visible = false;
        global.player1_wallet_instance.persistent = true;
    }
    else if (player == 2)
	{
        if (instance_exists(global.player2_wallet_instance))
		{
            with (global.player2_wallet_instance) instance_destroy();
        }
        global.player2_selected_wallet = obj_wallet_common;
        global.player2_wallet_instance = instance_create_layer(700, 35, "Instances", global.player2_selected_wallet);
        global.player2_wallet_instance.owner = 2;
        global.player2_wallet_instance.visible = false;
        global.player2_wallet_instance.persistent = true;
    }
    audio_play_sound_on(global.emitter_sound, snd_item_equip, 0, false);
}
