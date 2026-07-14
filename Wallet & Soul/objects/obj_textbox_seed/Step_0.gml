if (active)
{
	for (var i = ord("0"); i <= ord("9"); i++)
	{
		if (keyboard_check_pressed(i))
		{
			if (string_length(seed_text) < max_length)
			{
				seed_text += chr(i);
			}
		}
	}
	
	if (keyboard_check_pressed(vk_backspace) && string_length(seed_text) > 0)
	{
		seed_text = string_delete(seed_text, string_length(seed_text), 1);
	}
	
	if (keyboard_check_pressed(vk_enter))
	{
		active = false;
	}
}
