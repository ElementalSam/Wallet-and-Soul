if (owner == 1)
{
	global.player1_soul_count_blue -= soul_deduction_blue;
	global.player1_soul_count_green -= soul_deduction_green;
	global.player1_soul_count_red -= soul_deduction_red;
	global.player1_soul_count_yellow -= soul_deduction_yellow;
}
if (owner == 2)
{
	global.player2_soul_count_blue -= soul_deduction_blue;
	global.player2_soul_count_green -= soul_deduction_green;
	global.player2_soul_count_red -= soul_deduction_red;
	global.player2_soul_count_yellow -= soul_deduction_yellow;
}

scr_save();
global.player1_weapon_instance.weapon_damage -= global.player1_weapon_instance.weapon_low_damage_bonus;
global.player2_weapon_instance.weapon_damage -= global.player2_weapon_instance.weapon_low_damage_bonus;
global.player_dead = false;
room_goto(rm_main_menu);

global.player1_health = global.player1_max_health;
if (global.player2_enabled)
{
	global.player2_health = global.player2_max_health;
}
