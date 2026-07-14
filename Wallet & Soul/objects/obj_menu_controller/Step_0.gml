if (global.rebind_cooldown > 0)
{
    global.rebind_cooldown -= 1;
}
if (global.waiting_for_rebind || global.rebind_cooldown > 0)
{
    exit;
}

var selected_obj = menu_buttons[menu_index];
var inst = instance_find(selected_obj, 0);
if (inst != noone)
{
    if (input_check_pressed(global.player1_keybinds, "menu_up1", global.player1_device, global.player1_use_controller) || input_check_pressed(global.player2_keybinds, "menu_up2", global.player2_device, global.player2_use_controller))
	{
        menu_move(-1);
    }
    if (input_check_pressed(global.player1_keybinds, "menu_down1", global.player1_device, global.player1_use_controller) || input_check_pressed(global.player2_keybinds, "menu_down2", global.player2_device, global.player2_use_controller))
	{
        menu_move(1);
    }
    if (selected_obj == obj_audio_master || selected_obj == obj_audio_music || selected_obj == obj_audio_sound)
	{
        if (input_check_pressed(global.player1_keybinds, "menu_left1", global.player1_device, global.player1_use_controller) || input_check_pressed(global.player2_keybinds, "menu_left2", global.player2_device, global.player2_use_controller))
		{
            with (inst) adjust_slider(-1);
        }
        if (input_check_pressed(global.player1_keybinds, "menu_right1", global.player1_device, global.player1_use_controller) || input_check_pressed(global.player2_keybinds, "menu_right2", global.player2_device, global.player2_use_controller))
		{
            with (inst) adjust_slider(1);
        }
    }
    else
	{
        if (input_check_pressed(global.player1_keybinds, "menu_select1", global.player1_device, global.player1_use_controller))
		{
            menu_confirm(1);
        }
        if (input_check_pressed(global.player2_keybinds, "menu_select2", global.player2_device, global.player2_use_controller))
		{
            menu_confirm(2);
        }
    }
}
global.current_menu_index = menu_index;
