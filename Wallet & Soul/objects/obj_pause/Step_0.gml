if (keyboard_check_pressed(vk_escape) ||
    safe_input_check_pressed(global.player1_keybinds, "pause1", global.player1_device, global.player1_use_controller) ||
    safe_input_check_pressed(global.player2_keybinds, "pause2", global.player2_device, global.player2_use_controller))
{
	audio_play_sound_on(global.emitter_sound, snd_button_press, 0, false);
	if (pause_state == "options")
	{
		pause_state = "main";
		with (obj_button_fullscreen) instance_destroy();
		with (obj_audio_master) instance_destroy();
		with (obj_audio_music) instance_destroy();
		with (obj_audio_sound) instance_destroy();
	}
	else
	{
		global.isPaused = !global.isPaused;
	}
}
if (global.isPaused && pause_state == "main")
{
	var mx = device_mouse_x_to_gui(0);
	var my = device_mouse_y_to_gui(0);
	var gw = display_get_gui_width();
	var gh = display_get_gui_height();
	
	if (mouse_check_button_pressed(mb_left))
	{
		if (mx > gw / 2 - 100 && mx < gw / 2 + 100 && my > gh / 2 + 20 && my < gh / 2 + 60)
		{
			audio_play_sound_on(global.emitter_sound, snd_button_press, 0, false);
			pause_state = "options";
			instance_create_layer(gw / 2, gh / 2 - 150, "GUI", obj_button_fullscreen);
			instance_create_layer(gw / 2 - 125, gh / 2, "Instances", obj_audio_master);
			instance_create_layer(gw / 2 - 125, gh / 2 + 100, "Instances", obj_audio_music);
			instance_create_layer(gw / 2 - 125, gh / 2 + 200, "Instances", obj_audio_sound);
		}
		if (mx > gw / 2 - 100 && mx < gw / 2 + 100 && my > gh / 2 + 105 && my < gh / 2 + 145)
		{
        audio_play_sound_on(global.emitter_sound, snd_button_press, 0, false);
        global.isPaused = false;
		}
	}
}

if (global.isPaused && pause_state == "main")
{
    if (input_check_pressed(global.player1_keybinds, "menu_up1", global.player1_device, global.player1_use_controller) ||
        input_check_pressed(global.player2_keybinds, "menu_up2", global.player2_device, global.player2_use_controller))
	{
        pause_index = max(0, pause_index - 1);
    }
    if (input_check_pressed(global.player1_keybinds, "menu_down1", global.player1_device, global.player1_use_controller) ||
        input_check_pressed(global.player2_keybinds, "menu_down2", global.player2_device, global.player2_use_controller))
	{
        pause_index = min(array_length(pause_buttons) - 1, pause_index + 1);
    }

    if (input_check_pressed(global.player1_keybinds, "menu_select1", global.player1_device, global.player1_use_controller) ||
        input_check_pressed(global.player2_keybinds, "menu_select2", global.player2_device, global.player2_use_controller))
	{
        if (pause_buttons[pause_index] == "options")
		{
            audio_play_sound_on(global.emitter_sound, snd_button_press, 0, false);
            pause_state = "options";
			input_lockout = 5;
            var gw = display_get_gui_width();
            var gh = display_get_gui_height();
            instance_create_layer(gw / 2, gh / 2 - 150, "GUI", obj_button_fullscreen);
            instance_create_layer(gw / 2 - 125, gh / 2, "Instances", obj_audio_master);
            instance_create_layer(gw / 2 - 125, gh / 2 + 100, "Instances", obj_audio_music);
            instance_create_layer(gw / 2 - 125, gh / 2 + 200, "Instances", obj_audio_sound);
        }
        else if (pause_buttons[pause_index] == "resume")
		{
            global.isPaused = false;
        }
    }
	global.current_menu_index = pause_index;
}

if (global.isPaused && pause_state == "options")
{
    if (input_check_pressed(global.player1_keybinds, "menu_up1", global.player1_device, global.player1_use_controller) ||
        input_check_pressed(global.player2_keybinds, "menu_up2", global.player2_device, global.player2_use_controller))
	{
        options_index = max(0, options_index - 1);
	}
    if (input_check_pressed(global.player1_keybinds, "menu_down1", global.player1_device, global.player1_use_controller) ||
        input_check_pressed(global.player2_keybinds, "menu_down2", global.player2_device, global.player2_use_controller))
	{
        options_index = min(array_length(options_buttons) - 1, options_index + 1);
	}
	if (input_lockout <= 0)
	{
        if (input_check_pressed(global.player1_keybinds, "menu_select1", global.player1_device, global.player1_use_controller) ||
            input_check_pressed(global.player2_keybinds, "menu_select2", global.player2_device, global.player2_use_controller))
		{
            var selected_obj = options_buttons[options_index];
            var inst = instance_find(selected_obj, 0);
            if (inst != noone)
			{
                if (selected_obj == obj_button_fullscreen)
				{
                    with (inst) execute_action(1);
                }
            }
        }
    }
    var selected_obj = options_buttons[options_index];
    var inst = instance_find(selected_obj, 0);
    if (inst != noone && (selected_obj == obj_audio_master || selected_obj == obj_audio_music || selected_obj == obj_audio_sound))
	{
        if (input_check_pressed(global.player1_keybinds, "menu_left1", global.player1_device, global.player1_use_controller) ||
            input_check_pressed(global.player2_keybinds, "menu_left2", global.player2_device, global.player2_use_controller))
			{
            with (inst) adjust_slider(-1);
        }
        if (input_check_pressed(global.player1_keybinds, "menu_right1", global.player1_device, global.player1_use_controller) ||
            input_check_pressed(global.player2_keybinds, "menu_right2", global.player2_device, global.player2_use_controller))
			{
            with (inst) adjust_slider(1);
        }
    }
    global.current_menu_index = options_index;
}
if (input_lockout > 0) input_lockout--;

if (!instance_exists(obj_soul_stats) && !global.souls_message_shown)
{
	global.souls_message_shown = true;
	audio_play_sound_on(global.emitter_sound, snd_item_unlock, 0, false);
	var popup = instance_create_layer( camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), "Instances", obj_message_popup);
	popup.message = "All souls collected";
	popup.timer = 60 * 3;
}
