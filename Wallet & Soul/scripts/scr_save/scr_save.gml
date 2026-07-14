function scr_save()
{
	if (file_exists("options.sav")) file_delete("options.sav");
	ini_open("options.sav");
	
	ini_write_real("Volume", "Master", global.vol_master);
	ini_write_real("Volume", "Music", global.vol_music);
	ini_write_real("Volume", "Sound", global.vol_sound);
	
	ini_write_real("settings", "splitscreen_state", global.splitscreen_state);
	ini_write_real("Visuals", "Fullscreen", window_get_fullscreen());
	
	ini_write_real("Controllers", "controller_state", global.controller_state);
	ini_write_real("Controllers", "player1_use_controller", global.player1_use_controller);
	ini_write_real("Controllers", "player2_use_controller", global.player2_use_controller);
	
	ini_write_real("Player1", "move_left1_key", global.player1_keybinds[? "move_left1_key"]);
	ini_write_real("Player1", "move_right1_key", global.player1_keybinds[? "move_right1_key"]);
	ini_write_real("Player1", "jump1_key", global.player1_keybinds[? "jump1_key"]);
	ini_write_real("Player1", "dash1_key", global.player1_keybinds[? "dash1_key"]);
	ini_write_real("Player1", "attack1_key", global.player1_keybinds[? "attack1_key"]);
	ini_write_real("Player1", "move_left1_con", global.player1_keybinds[? "move_left1_con"]);
	ini_write_real("Player1", "move_right1_con", global.player1_keybinds[? "move_right1_con"]);
	ini_write_real("Player1", "jump1_con", global.player1_keybinds[? "jump1_con"]);
	ini_write_real("Player1", "dash1_con", global.player1_keybinds[? "dash1_con"]);
	ini_write_real("Player1", "attack1_con", global.player1_keybinds[? "attack1_con"]);
	
	ini_write_real("Player2", "move_left2_key", global.player2_keybinds[? "move_left2_key"]);
	ini_write_real("Player2", "move_right2_key", global.player2_keybinds[? "move_right2_key"]);
	ini_write_real("Player2", "jump2_key", global.player2_keybinds[? "jump2_key"]);
	ini_write_real("Player2", "dash2_key", global.player2_keybinds[? "dash2_key"]);
	ini_write_real("Player2", "attack2_key", global.player2_keybinds[? "attack2_key"]);
	ini_write_real("Player2", "move_left2_con", global.player2_keybinds[? "move_left2_con"]);
	ini_write_real("Player2", "move_right2_con", global.player2_keybinds[? "move_right2_con"]);
	ini_write_real("Player2", "jump2_con", global.player2_keybinds[? "jump2_con"]);
	ini_write_real("Player2", "dash2_con", global.player2_keybinds[? "dash2_con"]);
	ini_write_real("Player2", "attack2_con", global.player2_keybinds[? "attack2_con"]);
	
	ini_write_real("Player1_Souls", "Player1_Blue", global.player1_soul_count_blue);
	ini_write_real("Player1_Souls", "Player1_Green", global.player1_soul_count_green);
	ini_write_real("Player1_Souls", "Player1_Red", global.player1_soul_count_red);
	ini_write_real("Player1_Souls", "Player1_Yellow", global.player1_soul_count_yellow);
	ini_write_real("Player2_Souls", "Player2_Blue", global.player2_soul_count_blue);
	ini_write_real("Player2_Souls", "Player2_Green", global.player2_soul_count_green);
	ini_write_real("Player2_Souls", "Player2_Red", global.player2_soul_count_red);
	ini_write_real("Player2_Souls", "Player2_Yellow", global.player2_soul_count_yellow);
	
	ini_write_string("Player1_Wallet", "Player1_Selected", object_get_name(global.player1_selected_wallet));
	ini_write_string("Player2_Wallet", "Player2_Selected", object_get_name(global.player2_selected_wallet));
	
	ini_write_string("Player1_WalletUnlocks", "Uncommon", global.player1_wallet_unlocked_uncommon);
    ini_write_string("Player1_WalletUnlocks", "Rare", global.player1_wallet_unlocked_rare);
	ini_write_string("Player1_WalletUnlocks", "Epic", global.player1_wallet_unlocked_epic);
	ini_write_string("Player2_WalletUnlocks", "Uncommon", global.player2_wallet_unlocked_uncommon);
    ini_write_string("Player2_WalletUnlocks", "Rare", global.player2_wallet_unlocked_rare);
	ini_write_string("Player2_WalletUnlocks", "Epic", global.player2_wallet_unlocked_epic);
	
	ini_write_string("Player1_WalletUnlocks", "Blue", global.player1_wallet_unlocked_blue);
	ini_write_string("Player1_WalletUnlocks", "Green", global.player1_wallet_unlocked_green);
	ini_write_string("Player1_WalletUnlocks", "Red", global.player1_wallet_unlocked_red);
	ini_write_string("Player1_WalletUnlocks", "Yellow", global.player1_wallet_unlocked_yellow);
	ini_write_string("Player2_WalletUnlocks", "Blue", global.player2_wallet_unlocked_blue);
	ini_write_string("Player2_WalletUnlocks", "Green", global.player2_wallet_unlocked_green);
	ini_write_string("Player2_WalletUnlocks", "Red", global.player2_wallet_unlocked_red);
	ini_write_string("Player2_WalletUnlocks", "Yellow", global.player2_wallet_unlocked_yellow);
	
	ini_write_string("Player1_WalletUnlocks", "Speed", global.player1_wallet_unlocked_speed);
	ini_write_string("Player1_WalletUnlocks", "Jump", global.player1_wallet_unlocked_jump);
	ini_write_string("Player1_WalletUnlocks", "Dash", global.player1_wallet_unlocked_dash);
	ini_write_string("Player1_WalletUnlocks", "Cooldown", global.player1_wallet_unlocked_cooldown);
	ini_write_string("Player2_WalletUnlocks", "Speed", global.player2_wallet_unlocked_speed);
	ini_write_string("Player2_WalletUnlocks", "Jump", global.player2_wallet_unlocked_jump);
	ini_write_string("Player2_WalletUnlocks", "Dash", global.player2_wallet_unlocked_dash);
	ini_write_string("Player2_WalletUnlocks", "Cooldown", global.player2_wallet_unlocked_cooldown);
	
	ini_write_string("Player1_WalletUnlocks", "Health", global.player1_wallet_unlocked_health);
	ini_write_string("Player1_WalletUnlocks", "Reach", global.player1_wallet_unlocked_reach);
	ini_write_string("Player1_WalletUnlocks", "Strike", global.player1_wallet_unlocked_strike);
	ini_write_string("Player1_WalletUnlocks", "Damage", global.player1_wallet_unlocked_damage);
	ini_write_string("Player2_WalletUnlocks", "Health", global.player2_wallet_unlocked_health);
	ini_write_string("Player2_WalletUnlocks", "Reach", global.player2_wallet_unlocked_reach);
	ini_write_string("Player2_WalletUnlocks", "Strike", global.player2_wallet_unlocked_strike);
	ini_write_string("Player2_WalletUnlocks", "Damage", global.player2_wallet_unlocked_damage);
	
	ini_write_string("Player1_Weapon", "Player1_Selected", object_get_name(global.player1_selected_weapon));
	ini_write_string("Player2_Weapon", "Player2_Selected", object_get_name(global.player2_selected_weapon));
	
	ini_write_string("Player1_WeaponUnlocks", "Khopesh", global.player1_weapon_unlocked_khopesh);
	ini_write_string("Player1_WeaponUnlocks", "Rondel", global.player1_weapon_unlocked_rondel);
	ini_write_string("Player1_WeaponUnlocks", "Kabar", global.player1_weapon_unlocked_kabar);
	ini_write_string("Player2_WeaponUnlocks", "Khopesh", global.player2_weapon_unlocked_khopesh);
	ini_write_string("Player2_WeaponUnlocks", "Rondel", global.player2_weapon_unlocked_rondel);
	ini_write_string("Player2_WeaponUnlocks", "Kabar", global.player2_weapon_unlocked_kabar);
	
	ini_write_string("Player1_WeaponUnlocks", "Sword", global.player1_weapon_unlocked_sword);
	ini_write_string("Player1_WeaponUnlocks", "Falcha", global.player1_weapon_unlocked_falcha);
	ini_write_string("Player1_WeaponUnlocks", "Gladius", global.player1_weapon_unlocked_gladius);
	ini_write_string("Player1_WeaponUnlocks", "Chokuto", global.player1_weapon_unlocked_chokuto);
	ini_write_string("Player2_WeaponUnlocks", "Sword", global.player2_weapon_unlocked_sword);
	ini_write_string("Player2_WeaponUnlocks", "Falcha", global.player2_weapon_unlocked_falcha);
	ini_write_string("Player2_WeaponUnlocks", "Gladius", global.player2_weapon_unlocked_gladius);
	ini_write_string("Player2_WeaponUnlocks", "Chokuto", global.player2_weapon_unlocked_chokuto);
	
	ini_write_string("Player1_WeaponUnlocks", "Spear", global.player1_weapon_unlocked_spear);
	ini_write_string("Player1_WeaponUnlocks", "Dory", global.player1_weapon_unlocked_dory);
	ini_write_string("Player1_WeaponUnlocks", "Partisan", global.player1_weapon_unlocked_partisan);
	ini_write_string("Player1_WeaponUnlocks", "Halberd", global.player1_weapon_unlocked_halberd);
	ini_write_string("Player2_WeaponUnlocks", "Spear", global.player2_weapon_unlocked_spear);
	ini_write_string("Player2_WeaponUnlocks", "Dory", global.player2_weapon_unlocked_dory);
	ini_write_string("Player2_WeaponUnlocks", "Partisan", global.player2_weapon_unlocked_partisan);
	ini_write_string("Player2_WeaponUnlocks", "Halberd", global.player2_weapon_unlocked_halberd);
	
	ini_write_string("Player1_WeaponUnlocks", "Mace", global.player1_weapon_unlocked_mace);
	ini_write_string("Player1_WeaponUnlocks", "Knobbed", global.player1_weapon_unlocked_knobbed);
	ini_write_string("Player1_WeaponUnlocks", "Flanged", global.player1_weapon_unlocked_flanged);
	ini_write_string("Player1_WeaponUnlocks", "Spiked", global.player1_weapon_unlocked_spiked);
	ini_write_string("Player2_WeaponUnlocks", "Mace", global.player2_weapon_unlocked_mace);
	ini_write_string("Player2_WeaponUnlocks", "Knobbed", global.player2_weapon_unlocked_knobbed);
	ini_write_string("Player2_WeaponUnlocks", "Flanged", global.player2_weapon_unlocked_flanged);
	ini_write_string("Player2_WeaponUnlocks", "Spiked", global.player2_weapon_unlocked_spiked);
	
	if (global.player2_enabled)
	{
		ini_write_string("Player2", "Enabled", "true");
	}
	else
	{
		ini_write_string("Player2", "Enabled", "false");
	}
	
	ini_close();
}
