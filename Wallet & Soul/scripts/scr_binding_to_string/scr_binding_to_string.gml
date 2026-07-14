function binding_to_string(binding)
{
    if (binding >= 0 && binding < 256)
	{
        return keycode_to_string(binding);
    }
	else
	{
        return gamepad_button_to_string(binding);
    }
}
