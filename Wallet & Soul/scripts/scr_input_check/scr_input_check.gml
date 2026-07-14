function input_check(player_map, action, device, use_controller)
{
	var key_binding = ds_map_find_value(player_map, action + "_key");
    var con_binding = ds_map_find_value(player_map, action + "_con");
	if (key_binding >= 0 && key_binding < 256)
	{
        if (keyboard_check(key_binding)) return true;
    }
    if (use_controller && device != -1)
	{
        if (gamepad_button_check(device, con_binding)) return true;
    }
	return false;
}
