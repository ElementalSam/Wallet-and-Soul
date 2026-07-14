function safe_input_check_pressed(keybinds, action, device, use_controller)
{
    if (use_controller && is_undefined(device)) return false;
    return input_check_pressed(keybinds, action, device, use_controller);
}
