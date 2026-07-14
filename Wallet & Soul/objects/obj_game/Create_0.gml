global.vol_master = 1;
global.vol_music = 1;
global.vol_sound = 1;

global.emitter_music = audio_emitter_create();
global.emitter_sound = audio_emitter_create();

audio_master_gain(global.vol_master);
audio_emitter_gain(global.emitter_music, global.vol_music);
audio_emitter_gain(global.emitter_sound, global.vol_sound);

current_track = noone;

global.player2_enabled = false;

global.splitscreen_state = 0;
global.is_menu = true;
global.cam_player1 = camera_create();
global.cam_player2 = camera_create();

global.player1_device = -1;
global.player2_device = -1;
global.controller_state = 0;
global.player1_use_controller = false;
global.player2_use_controller = false;
global.rebind_mode = "";

global.player1_keybinds = ds_map_create();
ds_map_add(global.player1_keybinds, "move_left1_key", ord("A"));
ds_map_add(global.player1_keybinds, "move_right1_key", ord("D"));
ds_map_add(global.player1_keybinds, "jump1_key", vk_space);
ds_map_add(global.player1_keybinds, "dash1_key", ord("S"));
ds_map_add(global.player1_keybinds, "attack1_key", ord("W"));
ds_map_add(global.player1_keybinds, "move_left1_con", gp_padl); 
ds_map_add(global.player1_keybinds, "move_right1_con", gp_padr);
ds_map_add(global.player1_keybinds, "jump1_con", gp_face1);
ds_map_add(global.player1_keybinds, "dash1_con", gp_face2);
ds_map_add(global.player1_keybinds, "attack1_con", gp_face3);
ds_map_add(global.player1_keybinds, "menu_up1_con", gp_padu);
ds_map_add(global.player1_keybinds, "menu_down1_con", gp_padd);
ds_map_add(global.player1_keybinds, "menu_left1_con", gp_padl);
ds_map_add(global.player1_keybinds, "menu_right1_con", gp_padr);
ds_map_add(global.player1_keybinds, "menu_select1_con", gp_face1);
ds_map_add(global.player1_keybinds, "pause1_key", vk_escape);
ds_map_add(global.player1_keybinds, "pause1_con", gp_start);

global.player2_keybinds = ds_map_create();
ds_map_add(global.player2_keybinds, "move_left2_key", ord("J"));
ds_map_add(global.player2_keybinds, "move_right2_key", ord("L"));
ds_map_add(global.player2_keybinds, "jump2_key", vk_ralt);
ds_map_add(global.player2_keybinds, "dash2_key", ord("K"));
ds_map_add(global.player2_keybinds, "attack2_key", ord("I"));
ds_map_add(global.player2_keybinds, "move_left2_con", gp_padl);
ds_map_add(global.player2_keybinds, "move_right2_con", gp_padr);
ds_map_add(global.player2_keybinds, "jump2_con", gp_face1);
ds_map_add(global.player2_keybinds, "dash2_con", gp_face2);
ds_map_add(global.player2_keybinds, "attack2_con", gp_face3);
ds_map_add(global.player2_keybinds, "menu_up2_con", gp_padu);
ds_map_add(global.player2_keybinds, "menu_down2_con", gp_padd);
ds_map_add(global.player2_keybinds, "menu_left2_con", gp_padl);
ds_map_add(global.player2_keybinds, "menu_right2_con", gp_padr);
ds_map_add(global.player2_keybinds, "menu_select2_con", gp_face1);
ds_map_add(global.player2_keybinds, "pause2_key", vk_escape);
ds_map_add(global.player2_keybinds, "pause2_con", gp_start);

global.waiting_for_rebind = false;
global.rebind_cooldown = 0;

scr_init_chunks();
scr_load();

global.player1_soul_gain_blue = false;
global.player1_soul_gain_green = false;
global.player1_soul_gain_red = false;
global.player1_soul_gain_yellow = false;
global.player2_soul_gain_blue = false;
global.player2_soul_gain_green = false;
global.player2_soul_gain_red = false;
global.player2_soul_gain_yellow = false;

if (!variable_global_exists("player1_soul_count_blue")) global.player1_soul_count_blue = 0;
if (!variable_global_exists("player1_soul_count_green")) global.player1_soul_count_green = 0;
if (!variable_global_exists("player1_soul_count_red")) global.player1_soul_count_red = 0;
if (!variable_global_exists("player1_soul_count_yellow")) global.player1_soul_count_yellow = 0;
if (!variable_global_exists("player2_soul_count_blue")) global.player2_soul_count_blue = 0;
if (!variable_global_exists("player2_soul_count_green")) global.player2_soul_count_green = 0;
if (!variable_global_exists("player2_soul_count_red")) global.player2_soul_count_red = 0;
if (!variable_global_exists("player2_soul_count_yellow")) global.player2_soul_count_yellow = 0;

if (!variable_global_exists("player1_wallet_unlocked_uncommon")) global.player1_wallet_unlocked_uncommon = false;
if (!variable_global_exists("player1_wallet_unlocked_rare")) global.player1_wallet_unlocked_rare = false;
if (!variable_global_exists("player1_wallet_unlocked_epic")) global.player1_wallet_unlocked_epic = false;
if (!variable_global_exists("player2_wallet_unlocked_uncommon")) global.player2_wallet_unlocked_uncommon = false;
if (!variable_global_exists("player2_wallet_unlocked_rare")) global.player2_wallet_unlocked_rare = false;
if (!variable_global_exists("player2_wallet_unlocked_epic")) global.player2_wallet_unlocked_epic = false;

if (!variable_global_exists("player1_wallet_unlocked_blue")) global.player1_wallet_unlocked_blue = false;
if (!variable_global_exists("player1_wallet_unlocked_green")) global.player1_wallet_unlocked_green = false;
if (!variable_global_exists("player1_wallet_unlocked_red")) global.player1_wallet_unlocked_red = false;
if (!variable_global_exists("player1_wallet_unlocked_yellow")) global.player1_wallet_unlocked_yellow = false;
if (!variable_global_exists("player2_wallet_unlocked_blue")) global.player2_wallet_unlocked_blue = false;
if (!variable_global_exists("player2_wallet_unlocked_green")) global.player2_wallet_unlocked_green = false;
if (!variable_global_exists("player2_wallet_unlocked_red")) global.player2_wallet_unlocked_red = false;
if (!variable_global_exists("player2_wallet_unlocked_yellow")) global.player2_wallet_unlocked_yellow = false;

if (!variable_global_exists("player1_wallet_unlocked_speed")) global.player1_wallet_unlocked_speed = false;
if (!variable_global_exists("player1_wallet_unlocked_jump")) global.player1_wallet_unlocked_jump = false;
if (!variable_global_exists("player1_wallet_unlocked_dash")) global.player1_wallet_unlocked_dash = false;
if (!variable_global_exists("player1_wallet_unlocked_cooldown")) global.player1_wallet_unlocked_cooldown = false;
if (!variable_global_exists("player2_wallet_unlocked_speed")) global.player2_wallet_unlocked_speed = false;
if (!variable_global_exists("player2_wallet_unlocked_jump")) global.player2_wallet_unlocked_jump = false;
if (!variable_global_exists("player2_wallet_unlocked_dash")) global.player2_wallet_unlocked_dash = false;
if (!variable_global_exists("player2_wallet_unlocked_cooldown")) global.player2_wallet_unlocked_cooldown = false;

if (!variable_global_exists("player1_wallet_unlocked_health")) global.player1_wallet_unlocked_health = false;
if (!variable_global_exists("player1_wallet_unlocked_reach")) global.player1_wallet_unlocked_reach = false;
if (!variable_global_exists("player1_wallet_unlocked_strike")) global.player1_wallet_unlocked_strike = false;
if (!variable_global_exists("player1_wallet_unlocked_damage")) global.player1_wallet_unlocked_damage = false;
if (!variable_global_exists("player2_wallet_unlocked_health")) global.player2_wallet_unlocked_health = false;
if (!variable_global_exists("player2_wallet_unlocked_reach")) global.player2_wallet_unlocked_reach = false;
if (!variable_global_exists("player2_wallet_unlocked_strike")) global.player2_wallet_unlocked_strike = false;
if (!variable_global_exists("player2_wallet_unlocked_damage")) global.player2_wallet_unlocked_damage = false;

if (!variable_global_exists("player1_selected_wallet"))
{
    global.player1_selected_wallet = obj_wallet_common;
}
if (!variable_global_exists("player2_selected_wallet"))
{
    global.player2_selected_wallet = obj_wallet_common;
}

with (obj_wallet_stats)
{
    instance_destroy();
}
global.player1_wallet_instance = instance_create_layer(700, 35, "Instances", global.player1_selected_wallet);
global.player1_wallet_instance.owner = 1;
global.player1_wallet_instance.visible = false;
global.player1_wallet_instance.persistent = true;
global.player2_wallet_instance = instance_create_layer(700, 35, "Instances", global.player2_selected_wallet);
global.player2_wallet_instance.owner = 2;
global.player2_wallet_instance.visible = false;
global.player2_wallet_instance.persistent = true;

if (!variable_global_exists("player1_weapon_unlocked_khopesh")) global.player1_weapon_unlocked_khopesh = false;
if (!variable_global_exists("player1_weapon_unlocked_rondel")) global.player1_weapon_unlocked_rondel = false;
if (!variable_global_exists("player1_weapon_unlocked_kabar")) global.player1_weapon_unlocked_kabar = false;
if (!variable_global_exists("player2_weapon_unlocked_khopesh")) global.player2_weapon_unlocked_khopesh = false;
if (!variable_global_exists("player2_weapon_unlocked_rondel")) global.player2_weapon_unlocked_rondel = false;
if (!variable_global_exists("player2_weapon_unlocked_kabar")) global.player2_weapon_unlocked_kabar = false;

if (!variable_global_exists("player1_weapon_unlocked_sword")) global.player1_weapon_unlocked_sword = false;
if (!variable_global_exists("player1_weapon_unlocked_falcha")) global.player1_weapon_unlocked_falcha = false;
if (!variable_global_exists("player1_weapon_unlocked_gladius")) global.player1_weapon_unlocked_gladius = false;
if (!variable_global_exists("player1_weapon_unlocked_chokuto")) global.player1_weapon_unlocked_chokuto = false;
if (!variable_global_exists("player2_weapon_unlocked_sword")) global.player2_weapon_unlocked_sword = false;
if (!variable_global_exists("player2_weapon_unlocked_falcha")) global.player2_weapon_unlocked_falcha = false;
if (!variable_global_exists("player2_weapon_unlocked_gladius")) global.player2_weapon_unlocked_gladius = false;
if (!variable_global_exists("player2_weapon_unlocked_chokuto")) global.player2_weapon_unlocked_chokuto = false;

if (!variable_global_exists("player1_weapon_unlocked_spear")) global.player1_weapon_unlocked_spear = false;
if (!variable_global_exists("player1_weapon_unlocked_dory")) global.player1_weapon_unlocked_dory = false;
if (!variable_global_exists("player1_weapon_unlocked_partisan")) global.player1_weapon_unlocked_partisan = false;
if (!variable_global_exists("player1_weapon_unlocked_halberd")) global.player1_weapon_unlocked_halberd = false;
if (!variable_global_exists("player2_weapon_unlocked_spear")) global.player2_weapon_unlocked_spear = false;
if (!variable_global_exists("player2_weapon_unlocked_dory")) global.player2_weapon_unlocked_dory = false;
if (!variable_global_exists("player2_weapon_unlocked_partisan")) global.player2_weapon_unlocked_partisan = false;
if (!variable_global_exists("player2_weapon_unlocked_halberd")) global.player2_weapon_unlocked_halberd = false;

if (!variable_global_exists("player1_weapon_unlocked_mace")) global.player1_weapon_unlocked_mace = false;
if (!variable_global_exists("player1_weapon_unlocked_knobbed")) global.player1_weapon_unlocked_knobbed = false;
if (!variable_global_exists("player1_weapon_unlocked_flanged")) global.player1_weapon_unlocked_flanged = false;
if (!variable_global_exists("player1_weapon_unlocked_spiked")) global.player1_weapon_unlocked_spiked = false;
if (!variable_global_exists("player2_weapon_unlocked_mace")) global.player2_weapon_unlocked_mace = false;
if (!variable_global_exists("player2_weapon_unlocked_knobbed")) global.player2_weapon_unlocked_knobbed = false;
if (!variable_global_exists("player2_weapon_unlocked_flanged")) global.player2_weapon_unlocked_flanged = false;
if (!variable_global_exists("player2_weapon_unlocked_spiked")) global.player2_weapon_unlocked_spiked = false;

if (!variable_global_exists("player1_selected_weapon"))
{
    global.player1_selected_weapon = obj_weapon_knife;
}
if (!variable_global_exists("player2_selected_weapon"))
{
    global.player2_selected_weapon = obj_weapon_knife;
}

with (obj_weapon_stats)
{
    instance_destroy();
}

global.player1_weapon_instance = instance_create_layer(0, 0, "Instances", global.player1_selected_weapon);
global.player1_weapon_instance.owner = 1;
global.player1_weapon_instance.visible = false;
global.player1_weapon_instance.persistent = true;
global.player2_weapon_instance = instance_create_layer(0, 0, "Instances", global.player2_selected_weapon);
global.player2_weapon_instance.owner = 2;
global.player2_weapon_instance.visible = false;
global.player2_weapon_instance.persistent = true;

global.weapon_home_x = global.player1_weapon_instance.x;
global.weapon_home_y = global.player1_weapon_instance.y;
global.player1_weapon_attacking = false;
global.player2_weapon_attacking = false;

randomize();
show_debug_message("Gamepad count: " + string(gamepad_get_device_count()));
show_debug_message("Player1 device: " + string(global.player1_device));
show_debug_message("Player2 device: " + string(global.player2_device));
