switch (global.controller_state)
{
    case 0: button_text = "None"; break;
    case 1: button_text = "Player 1"; break;
    case 2: button_text = "Player 2"; break;
    case 3: button_text = "Both"; break;
}
action_locked = false;
index = 0;
function execute_action(player)
{
	if (action_locked) exit;
	action_locked = true;
	audio_play_sound_on(global.emitter_sound, snd_button_press, 0, false);
    global.controller_state = (global.controller_state + 1) mod 4;
    switch (global.controller_state)
	{
        case 0:
            button_text = "None";
            global.player1_use_controller = false;
            global.player2_use_controller = false;
            global.player1_device = -1;
            global.player2_device = -1;
            break;
        case 1:
            button_text = "Player 1";
            global.player1_use_controller = true;
            global.player2_use_controller = false;
            global.player1_device = find_first_controller();
            global.player2_device = -1;
            break;
        case 2:
            button_text = "Player 2";
            global.player1_use_controller = false;
            global.player2_use_controller = true;
            global.player1_device = -1;
            global.player2_device = find_first_controller();
            break;
        case 3:
            button_text = "Both";
            global.player1_use_controller = true;
            global.player2_use_controller = true;
            global.player1_device = find_first_controller();
            global.player2_device = find_first_controller();
            break;
    }
	show_debug_message("Player1 device: " + string(global.player1_device));
	show_debug_message("Player2 device: " + string(global.player2_device));
	show_debug_message("Controller state: " + string(global.controller_state));
	show_debug_message("Player1 use controller: " + string(global.player1_use_controller));
	show_debug_message("Player2 use controller: " + string(global.player2_use_controller));
}

for (var i = 0; i < 8; i++)
{
    if (gamepad_is_connected(i))
	{
        show_debug_message("GameMaker sees controller at index " + string(i));
        show_debug_message("Description: " + gamepad_get_description(i));
    }
}
