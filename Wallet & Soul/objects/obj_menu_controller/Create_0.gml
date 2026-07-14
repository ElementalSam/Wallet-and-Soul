if (room == rm_main_menu)
{
    menu_buttons = [
        obj_button_play,
        obj_button_wallets,
        obj_button_weapons,
        obj_button_whats_new,
        obj_button_settings,
        obj_button_quit
		];
}

if (room == rm_settings_menu)
{
    menu_buttons = [
        obj_button_controllers,
        obj_button_keybinds,
        obj_button_splitscreen,
        obj_button_player2,
        obj_button_controls,
        obj_button_fullscreen,
		obj_audio_master,
		obj_audio_music,
		obj_audio_sound,
		obj_button_back
    ];
}
if (room == rm_help_controls)
{
    menu_buttons = [
	obj_player1_right_con,
	obj_player1_left_con,
	obj_player1_jump_con,
	obj_player1_dash_con,
	obj_player1_attack_con,
	obj_player2_right_con,
	obj_player2_left_con,
	obj_player2_jump_con,
	obj_player2_dash_con,
	obj_player2_attack_con,
	obj_button_return_settings
    ];
}
if (room == rm_help_keybinds)
{
    menu_buttons = [
	obj_button_return_settings,
    ];
}

if (room == rm_weapon_menu)
{
    menu_buttons = [
		obj_button_help_weapons,
        obj_button_back,
		obj_weapon_button_knife,
		obj_weapon_button_khopesh,
		obj_weapon_button_rondel,
		obj_weapon_button_kabar,
		obj_weapon_button_sword,
		obj_weapon_button_falcha,
		obj_weapon_button_gladius,
		obj_weapon_button_chokuto,
		obj_weapon_button_spear,
		obj_weapon_button_dory,
		obj_weapon_button_partisan,
		obj_weapon_button_halberd,
		obj_weapon_button_mace,
		obj_weapon_button_knobbed,
		obj_weapon_button_flanged,
		obj_weapon_button_spiked,
    ];
}
if (room == rm_help_weapons)
{
    menu_buttons = [
		obj_button_return_weapon
    ];
}

if (room == rm_wallet_menu)
{
    menu_buttons = [
		obj_button_help_wallets,
        obj_button_back,
		obj_wallet_button_common,
		obj_wallet_button_uncommon,
		obj_wallet_button_rare,
		obj_wallet_button_epic,
		obj_wallet_button_blue,
		obj_wallet_button_green,
		obj_wallet_button_red,
		obj_wallet_button_yellow,
		obj_wallet_button_speed,
		obj_wallet_button_jump,
		obj_wallet_button_dash,
		obj_wallet_button_cooldown,
		obj_wallet_button_health,
		obj_wallet_button_reach,
		obj_wallet_button_strike,
		obj_wallet_button_damage
    ];
}
if (room == rm_help_wallets)
{
    menu_buttons = [
		obj_button_goto_souls,
        obj_button_return_wallet
    ];
}
if (room == rm_help_souls)
{
    menu_buttons = [
		obj_button_goto_wallets,
        obj_button_return_wallet
    ];
}

if (room == rm_news1)
{
    menu_buttons = [
		obj_button_goto_news2,
        obj_button_back
    ];
}
if (room == rm_news2)
{
    menu_buttons = [
		obj_button_back,
        obj_button_goto_news1
    ];
}

if (room == rm_region_select)
{
    menu_buttons = [
        obj_button_back,
		obj_button_goto_advice,
        obj_button_help_levels,
        obj_button_generator,
        obj_button_region_volcano,
        obj_button_region_tundra,
        obj_button_region_forest,
		obj_button_region_desert
		];
}
if (room == rm_help_levels)
{
    menu_buttons = [
		obj_button_return_region
    ];
}
if (room == rm_help_advice)
{
    menu_buttons = [
		obj_button_return_region,
		obj_button_goto_player2
    ];
}
if (room == rm_help_player2)
{
    menu_buttons = [
		obj_button_return_region,
		obj_button_goto_advice
    ];
}

if (room == rm_level_generator)
{
    menu_buttons = [
        obj_button_return_region,
        obj_button_help_generator,
        obj_button_generator_start,
        obj_button_generator_size,
        obj_button_generator_region
		// Textbox?
		];
}
if (room == rm_help_generator)
{
    menu_buttons = [
		obj_button_return_generator
    ];
}

if (room == rm_level_select_desert)
{
    menu_buttons = [
        obj_button_return_region,
        obj_button_desert_lvl_1,
        obj_button_desert_lvl_2,
        obj_button_desert_lvl_3,
        obj_button_desert_lvl_4,
		obj_button_desert_lvl_5
		];
}
if (room == rm_level_select_forest)
{
    menu_buttons = [
        obj_button_return_region,
        obj_button_forest_lvl_1,
        obj_button_forest_lvl_2,
        obj_button_forest_lvl_3,
        obj_button_forest_lvl_4,
		obj_button_forest_lvl_5
		];
}
if (room == rm_level_select_tundra)
{
    menu_buttons = [
        obj_button_return_region,
        obj_button_tundra_lvl_1,
        obj_button_tundra_lvl_2,
        obj_button_tundra_lvl_3,
        obj_button_tundra_lvl_4,
		obj_button_tundra_lvl_5
		];
}
if (room == rm_level_select_volcano)
{
    menu_buttons = [
        obj_button_return_region,
        obj_button_volcano_lvl_1,
        obj_button_volcano_lvl_2,
        obj_button_volcano_lvl_3,
        obj_button_volcano_lvl_4,
		obj_button_volcano_lvl_5
		];
}

menu_index = 0;
function menu_move(direction)
{
    menu_index += direction;
    if (menu_index < 0) menu_index = array_length(menu_buttons) - 1;
    if (menu_index >= array_length(menu_buttons)) menu_index = 0;
}
function menu_confirm(player)
{
    var btn_obj = menu_buttons[menu_index];
    var inst = instance_find(btn_obj, 0);
    if (inst != noone)
	{
		inst.execute_action(player);
        //with (inst)
		//{
            //execute_action(player);
        //}
    }
}
