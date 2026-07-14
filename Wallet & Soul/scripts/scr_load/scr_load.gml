function scr_load()
{
	if (file_exists("options.sav"))
	{
		ini_open("options.sav");
		
		global.vol_master = ini_read_real("Volume", "Master", 1);
		audio_master_gain(global.vol_master);
		
		global.vol_music = ini_read_real("Volume", "Music", 1);
		audio_emitter_gain(global.emitter_music, global.vol_music);
		
		global.vol_sound = ini_read_real("Volume", "Sound", 1);
		audio_emitter_gain(global.emitter_sound, global.vol_sound);
		
		window_set_fullscreen(ini_read_real("Visuals", "Fullscreen", 0));
		
		if (ini_key_exists("settings", "splitscreen_state"))
		{
			global.splitscreen_state = ini_read_real("settings", "splitscreen_state", 0);
		}
		else
		{
			global.splitscreen_state = 0;
		}
		
		global.controller_state = ini_read_real("Controllers", "controller_state", 0);
		global.player1_use_controller = ini_read_real("Controllers", "player1_use_controller", false);
		global.player2_use_controller = ini_read_real("Controllers", "player2_use_controller", false);
		
		global.player1_keybinds[? "move_left1_key"] = ini_read_real("Player1", "move_left1_key", ord("A"));
		global.player1_keybinds[? "move_right1_key"] = ini_read_real("Player1", "move_right1_key", ord("D"));
		global.player1_keybinds[? "jump1_key"] = ini_read_real("Player1", "jump1_key", vk_space);
		global.player1_keybinds[? "dash1_key"] = ini_read_real("Player1", "dash1_key", ord("S"));
		global.player1_keybinds[? "attack1_key"] = ini_read_real("Player1", "attack1_key", ord("W"));
		global.player1_keybinds[? "move_left1_con"]  = ini_read_real("Player1", "move_left1_con", gp_padl);
		global.player1_keybinds[? "move_right1_con"] = ini_read_real("Player1", "move_right1_con", gp_padr);
		global.player1_keybinds[? "jump1_con"] = ini_read_real("Player1", "jump1_con", gp_face1);
		global.player1_keybinds[? "dash1_con"] = ini_read_real("Player1", "dash1_con", gp_face2);
		global.player1_keybinds[? "attack1_con"] = ini_read_real("Player1", "attack1_con", gp_face3);
		
		global.player2_keybinds[? "move_left2_key"] = ini_read_real("Player2", "move_left2_key", ord("J"));
		global.player2_keybinds[? "move_right2_key"] = ini_read_real("Player2", "move_right2_key", ord("L"));
		global.player2_keybinds[? "jump2_key"] = ini_read_real("Player2", "jump2_key", vk_ralt);
		global.player2_keybinds[? "dash2_key"] = ini_read_real("Player2", "dash2_key", ord("K"));
		global.player2_keybinds[? "attack2_key"] = ini_read_real("Player2", "attack2_key", ord("I"));
		global.player2_keybinds[? "move_left2_con"]  = ini_read_real("Player2", "move_left2_con", gp_padl);
		global.player2_keybinds[? "move_right2_con"] = ini_read_real("Player2", "move_right2_con", gp_padr);
		global.player2_keybinds[? "jump2_con"] = ini_read_real("Player2", "jump2_con", gp_face1);
		global.player2_keybinds[? "dash2_con"] = ini_read_real("Player2", "dash2_con", gp_face2);
		global.player2_keybinds[? "attack2_con"] = ini_read_real("Player2", "attack2_con", gp_face3);
		
		global.player1_soul_count_blue = ini_read_real("Player1_Souls", "Player1_Blue", 0);
		global.player1_soul_count_green = ini_read_real("Player1_Souls", "Player1_Green", 0);
		global.player1_soul_count_red = ini_read_real("Player1_Souls", "Player1_Red", 0);
		global.player1_soul_count_yellow = ini_read_real("Player1_Souls", "Player1_Yellow", 0);
		global.player2_soul_count_blue = ini_read_real("Player2_Souls", "Player2_Blue", 0);
		global.player2_soul_count_green = ini_read_real("Player2_Souls", "Player2_Green", 0);
		global.player2_soul_count_red = ini_read_real("Player2_Souls", "Player2_Red", 0);
		global.player2_soul_count_yellow = ini_read_real("Player2_Souls", "Player2_Yellow", 0);
		
		var wallet_name = ini_read_string("Player1_Wallet", "Player1_Selected", "obj_wallet_common");
		global.player1_selected_wallet = asset_get_index(wallet_name);
		var wallet_name2 = ini_read_string("Player2_Wallet", "Player2_Selected", "obj_wallet_common");
		global.player2_selected_wallet = asset_get_index(wallet_name2);
		
		global.player1_wallet_unlocked_uncommon = ini_read_string("Player1_WalletUnlocks", "Uncommon", false);
        global.player1_wallet_unlocked_rare = ini_read_string("Player1_WalletUnlocks", "Rare", false);
		global.player1_wallet_unlocked_epic = ini_read_string("Player1_WalletUnlocks", "Epic", false);
		global.player2_wallet_unlocked_uncommon = ini_read_string("Player2_WalletUnlocks", "Uncommon", false);
        global.player2_wallet_unlocked_rare = ini_read_string("Player2_WalletUnlocks", "Rare", false);
		global.player2_wallet_unlocked_epic = ini_read_string("Player2_WalletUnlocks", "Epic", false);
		
		global.player1_wallet_unlocked_blue = ini_read_string("Player1_WalletUnlocks", "Blue", false);
        global.player1_wallet_unlocked_green = ini_read_string("Player1_WalletUnlocks", "Green", false);
        global.player1_wallet_unlocked_red = ini_read_string("Player1_WalletUnlocks", "Red", false);
		global.player1_wallet_unlocked_yellow = ini_read_string("Player1_WalletUnlocks", "Yellow", false);
		global.player2_wallet_unlocked_blue = ini_read_string("Player2_WalletUnlocks", "Blue", false);
        global.player2_wallet_unlocked_green = ini_read_string("Player2_WalletUnlocks", "Green", false);
        global.player2_wallet_unlocked_red = ini_read_string("Player2_WalletUnlocks", "Red", false);
		global.player2_wallet_unlocked_yellow = ini_read_string("Player2_WalletUnlocks", "Yellow", false);
		
		global.player1_wallet_unlocked_speed = ini_read_string("Player1_WalletUnlocks", "Speed", false);
		global.player1_wallet_unlocked_jump = ini_read_string("Player1_WalletUnlocks", "Jump", false);
		global.player1_wallet_unlocked_dash = ini_read_string("Player1_WalletUnlocks", "Dash", false);
		global.player1_wallet_unlocked_cooldown = ini_read_string("Player1_WalletUnlocks", "Cooldown", false);
		global.player2_wallet_unlocked_speed = ini_read_string("Player2_WalletUnlocks", "Speed", false);
		global.player2_wallet_unlocked_jump = ini_read_string("Player2_WalletUnlocks", "Jump", false);
		global.player2_wallet_unlocked_dash = ini_read_string("Player2_WalletUnlocks", "Dash", false);
		global.player2_wallet_unlocked_cooldown = ini_read_string("Player2_WalletUnlocks", "Cooldown", false);
		
		global.player1_wallet_unlocked_health = ini_read_string("Player1_WalletUnlocks", "Health", false);
		global.player1_wallet_unlocked_reach = ini_read_string("Player1_WalletUnlocks", "Reach", false);
		global.player1_wallet_unlocked_strike = ini_read_string("Player1_WalletUnlocks", "Strike", false);
		global.player1_wallet_unlocked_damage = ini_read_string("Player1_WalletUnlocks", "Damage", false);
		global.player2_wallet_unlocked_health = ini_read_string("Player2_WalletUnlocks", "Health", false);
		global.player2_wallet_unlocked_reach = ini_read_string("Player2_WalletUnlocks", "Reach", false);
		global.player2_wallet_unlocked_strike = ini_read_string("Player2_WalletUnlocks", "Strike", false);
		global.player2_wallet_unlocked_damage = ini_read_string("Player2_WalletUnlocks", "Damage", false);
		
		var weapon_name = ini_read_string("Player1_Weapon", "Player1_Selected", "obj_weapon_knife");
		global.player1_selected_weapon = asset_get_index(weapon_name);
		var weapon_name2 = ini_read_string("Player2_Weapon", "Player2_Selected", "obj_weapon_knife");
		global.player2_selected_weapon = asset_get_index(weapon_name2);
		
		global.player1_weapon_unlocked_khopesh = ini_read_string("Player1_WeaponUnlocks", "Khopesh", false);
		global.player1_weapon_unlocked_rondel = ini_read_string("Player1_WeaponUnlocks", "Rondel", false);
		global.player1_weapon_unlocked_kabar = ini_read_string("Player1_WeaponUnlocks", "Kabar", false);
		global.player2_weapon_unlocked_khopesh = ini_read_string("Player2_WeaponUnlocks", "Khopesh", false);
		global.player2_weapon_unlocked_rondel = ini_read_string("Player2_WeaponUnlocks", "Rondel", false);
		global.player2_weapon_unlocked_kabar = ini_read_string("Player2_WeaponUnlocks", "Kabar", false);
		
		global.player1_weapon_unlocked_sword = ini_read_string("Player1_WeaponUnlocks", "Sword", false);
		global.player1_weapon_unlocked_falcha = ini_read_string("Player1_WeaponUnlocks", "Falcha", false);
		global.player1_weapon_unlocked_gladius = ini_read_string("Player1_WeaponUnlocks", "Gladius", false);
		global.player1_weapon_unlocked_chokuto = ini_read_string("Player1_WeaponUnlocks", "Chokuto", false);
		global.player2_weapon_unlocked_sword = ini_read_string("Player2_WeaponUnlocks", "Sword", false);
		global.player2_weapon_unlocked_falcha = ini_read_string("Player2_WeaponUnlocks", "Falcha", false);
		global.player2_weapon_unlocked_gladius = ini_read_string("Player2_WeaponUnlocks", "Gladius", false);
		global.player2_weapon_unlocked_chokuto = ini_read_string("Player2_WeaponUnlocks", "Chokuto", false);
		
		global.player1_weapon_unlocked_spear = ini_read_string("Player1_WeaponUnlocks", "Spear", false);
		global.player1_weapon_unlocked_dory = ini_read_string("Player1_WeaponUnlocks", "Dory", false);
		global.player1_weapon_unlocked_partisan = ini_read_string("Player1_WeaponUnlocks", "Partisan", false);
		global.player1_weapon_unlocked_halberd = ini_read_string("Player1_WeaponUnlocks", "Halberd", false);
		global.player2_weapon_unlocked_spear = ini_read_string("Player2_WeaponUnlocks", "Spear", false);
		global.player2_weapon_unlocked_dory = ini_read_string("Player2_WeaponUnlocks", "Dory", false);
		global.player2_weapon_unlocked_partisan = ini_read_string("Player2_WeaponUnlocks", "Partisan", false);
		global.player2_weapon_unlocked_halberd = ini_read_string("Player2_WeaponUnlocks", "Halberd", false);
		
		global.player1_weapon_unlocked_mace = ini_read_string("Player1_WeaponUnlocks", "Mace", false);
		global.player1_weapon_unlocked_knobbed = ini_read_string("Player1_WeaponUnlocks", "Knobbed", false);
		global.player1_weapon_unlocked_flanged = ini_read_string("Player1_WeaponUnlocks", "Flanged", false);
		global.player1_weapon_unlocked_spiked = ini_read_string("Player1_WeaponUnlocks", "Spiked", false);
		global.player2_weapon_unlocked_mace = ini_read_string("Player2_WeaponUnlocks", "Mace", false);
		global.player2_weapon_unlocked_knobbed = ini_read_string("Player2_WeaponUnlocks", "Knobbed", false);
		global.player2_weapon_unlocked_flanged = ini_read_string("Player2_WeaponUnlocks", "Flanged", false);
		global.player2_weapon_unlocked_spiked = ini_read_string("Player2_WeaponUnlocks", "Spiked", false);
		
		var val = ini_read_string("Player2", "Enabled", "false");
		global.player2_enabled = (val == "true");
		
		ini_close();
		scr_viewports(global.splitscreen_state);
	}
}
